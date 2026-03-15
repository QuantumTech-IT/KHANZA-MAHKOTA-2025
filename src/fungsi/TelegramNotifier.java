package fungsi;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

/**
 * Mengirim notifikasi ke Telegram Bot.
 * Konfigurasi dibaca dari config/telegram.properties
 *
 * Penggunaan:
 *   TelegramNotifier.sendError("REGISTRASI", "admin", "Data gagal disimpan", "SQLException: ...");
 *   TelegramNotifier.sendInfo("SEP_BPJS",   "admin", "SEP berhasil diterbitkan | NoSEP=...");
 *   TelegramNotifier.sendWarn("REGISTRASI", "admin", "Data registrasi dihapus | NoRawat=...");
 */
public class TelegramNotifier {

    private static final String CONFIG_FILE = "config/telegram.properties";
    private static final SimpleDateFormat FMT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    private static String   botToken   = "";
    private static String[] chatIds    = new String[0];
    private static String   rsName     = "RSPH";
    private static boolean  enabled    = false;
    private static boolean  loaded     = false;

    // -------------------------------------------------------------------------
    // Public API
    // -------------------------------------------------------------------------

    public static void sendError(String modul, String user, String pesan, String detail) {
        String teks =
            "🔴 ERROR - " + rsName() + "\n" +
            "📋 Modul  : " + modul + "\n" +
            "👤 User   : " + user + "\n" +
            "📝 Pesan  : " + pesan + "\n" +
            (detail != null && !detail.isEmpty() ? "⚠️ Detail : " + detail + "\n" : "") +
            "🕐 Waktu  : " + FMT.format(new Date());
        kirim(teks);
    }

    public static void sendWarn(String modul, String user, String pesan) {
        String teks =
            "🟡 WARN - " + rsName() + "\n" +
            "📋 Modul  : " + modul + "\n" +
            "👤 User   : " + user + "\n" +
            "📝 Info   : " + pesan + "\n" +
            "🕐 Waktu  : " + FMT.format(new Date());
        kirim(teks);
    }

    public static void sendInfo(String modul, String user, String pesan) {
        String teks =
            "ℹ️ INFO - " + rsName() + "\n" +
            "📋 Modul  : " + modul + "\n" +
            "👤 User   : " + user + "\n" +
            "📝 Info   : " + pesan + "\n" +
            "🕐 Waktu  : " + FMT.format(new Date());
        kirim(teks);
    }

    // -------------------------------------------------------------------------
    // Internal
    // -------------------------------------------------------------------------

    private static String rsName() {
        loadConfig();
        return rsName;
    }

    private static void kirim(final String pesan) {
        loadConfig();
        if (!enabled || botToken.isEmpty() || chatIds.length == 0) return;

        final String   token = botToken;
        final String[] chats = chatIds;

        new Thread(() -> {
            for (String chat : chats) {
                if (chat.trim().isEmpty()) continue;
                try {
                    URL url = new URL("https://api.telegram.org/bot" + token + "/sendMessage");
                    HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                    conn.setRequestMethod("POST");
                    conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                    conn.setDoOutput(true);
                    conn.setConnectTimeout(5000);
                    conn.setReadTimeout(5000);

                    String body = "chat_id=" + encode(chat.trim()) +
                                  "&text="    + encode(pesan);

                    try (DataOutputStream out = new DataOutputStream(conn.getOutputStream())) {
                        out.writeBytes(body);
                        out.flush();
                    }

                    try (BufferedReader br = new BufferedReader(
                            new InputStreamReader(conn.getInputStream()))) {
                        while (br.readLine() != null) { /* consume */ }
                    }
                    conn.disconnect();
                } catch (Exception e) {
                    System.out.println("[TelegramNotifier] Gagal kirim ke " + chat + ": " + e.getMessage());
                }
            }
        }).start();
    }

    private static synchronized void loadConfig() {
        if (loaded) return;
        loaded = true;
        try {
            Properties props = new Properties();
            try (FileInputStream fis = new FileInputStream(CONFIG_FILE)) {
                props.load(fis);
            }
            enabled  = "true".equalsIgnoreCase(props.getProperty("telegram.enabled", "false"));
            botToken = props.getProperty("telegram.bot_token", "").trim();
            rsName   = props.getProperty("telegram.rs_name", "RSPH").trim();
            // Support multiple chat_id dipisah koma
            String rawChatId = props.getProperty("telegram.chat_id", "").trim();
            chatIds = rawChatId.split(",");
        } catch (Exception e) {
            System.out.println("[TelegramNotifier] Config tidak ditemukan: " + e.getMessage());
            enabled = false;
        }
    }

    private static String encode(String s) {
        try {
            return java.net.URLEncoder.encode(s, "UTF-8");
        } catch (Exception e) {
            return s;
        }
    }
}
