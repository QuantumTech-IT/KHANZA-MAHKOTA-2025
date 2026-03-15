package fungsi;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Utility logging ke file teks harian.
 * File log disimpan di folder logs/ relatif terhadap direktori aplikasi berjalan.
 *
 * Format baris log:
 *   [2026-03-15 10:34:22] [INFO ] [REGISTRASI] User=admin | NoRawat=... | Pasien=... | Status=SUKSES
 *   [2026-03-15 10:34:25] [ERROR] [SEP_BPJS  ] User=admin | NoRawat=... | NoSEP=... | Status=GAGAL | Detail=...
 *
 * Penggunaan:
 *   AppLogger.info("REGISTRASI", "admin", "NoRawat=X | Pasien=Y | Status=SUKSES");
 *   AppLogger.error("SEP_BPJS", "admin", "Status=GAGAL", ex.getMessage());
 */
public class AppLogger {

    private static final SimpleDateFormat FMT_WAKTU   = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    private static final SimpleDateFormat FMT_TANGGAL = new SimpleDateFormat("yyyyMMdd");
    private static final String DIR_LOG = "logs";

    // -------------------------------------------------------------------------
    // Public API
    // -------------------------------------------------------------------------

    /** Tulis log level INFO */
    public static void info(String modul, String user, String pesan) {
        tulis("INFO ", modul, user, pesan, null);
    }

    /** Tulis log level ERROR beserta detail exception/keterangan */
    public static void error(String modul, String user, String pesan, String detail) {
        tulis("ERROR", modul, user, pesan, detail);
    }

    /** Tulis log level WARN */
    public static void warn(String modul, String user, String pesan) {
        tulis("WARN ", modul, user, pesan, null);
    }

    // -------------------------------------------------------------------------
    // Helper methods
    // -------------------------------------------------------------------------

    private static void tulis(String level, String modul, String user, String pesan, String detail) {
        String waktu   = FMT_WAKTU.format(new Date());
        String tanggal = FMT_TANGGAL.format(new Date());
        String namaFile = namaModulKeFile(modul) + "_" + tanggal + ".txt";

        StringBuilder sb = new StringBuilder();
        sb.append("[").append(waktu).append("] ");
        sb.append("[").append(level).append("] ");
        sb.append("[").append(String.format("%-12s", modul)).append("] ");
        sb.append("User=").append(user).append(" | ");
        sb.append(pesan);
        if (detail != null && !detail.isEmpty()) {
            sb.append(" | Detail=").append(detail);
        }

        // Selalu print ke console
        System.out.println(sb.toString());

        // Tulis ke file + kirim Telegram di background thread
        final String baris      = sb.toString();
        final String file       = namaFile;
        final String lvl        = level.trim();
        final String pesanFinal = pesan;
        final String detailFinal= detail;

        new Thread(() -> {
            tulisKeFile(file, baris);
            // Kirim ke Telegram sesuai level
            switch (lvl) {
                case "ERROR":
                    TelegramNotifier.sendError(modul, user, pesanFinal, detailFinal);
                    break;
                case "WARN":
                    TelegramNotifier.sendWarn(modul, user, pesanFinal);
                    break;
                case "INFO":
                    TelegramNotifier.sendInfo(modul, user, pesanFinal);
                    break;
            }
        }).start();
    }

    private static void tulisKeFile(String namaFile, String baris) {
        try {
            File dir = new File(DIR_LOG);
            if (!dir.exists()) {
                dir.mkdirs();
            }
            File logFile = new File(dir, namaFile);
            try (BufferedWriter bw = new BufferedWriter(new FileWriter(logFile, true))) {
                bw.write(baris);
                bw.newLine();
            }
        } catch (IOException e) {
            System.out.println("[AppLogger] Gagal tulis log ke file: " + e.getMessage());
        }
    }

    /** Mapping nama modul ke nama file log */
    private static String namaModulKeFile(String modul) {
        String m = modul.trim().toUpperCase();
        if (m.startsWith("REG"))       return "registrasi";
        if (m.startsWith("SEP"))       return "sep_bpjs";
        if (m.startsWith("ANTRIAN"))   return "antrian_bpjs";
        return m.toLowerCase().replaceAll("[^a-z0-9_]", "_");
    }
}
