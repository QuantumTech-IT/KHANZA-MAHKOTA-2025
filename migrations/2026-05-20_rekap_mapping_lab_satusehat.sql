-- Rekap query pembentukan template_laboratorium dan satu_sehat_mapping_lab
-- DB target: sik_mahkota
-- Tanggal rekap: 2026-05-20

USE sik_mahkota;

START TRANSACTION;

-- 102-K.2 | Hematologi Darah Rutin
DELETE FROM template_laboratorium
WHERE kd_jenis_prw = '102-K.2';

INSERT INTO template_laboratorium (
    kd_jenis_prw,
    Pemeriksaan,
    satuan,
    nilai_rujukan_ld,
    nilai_rujukan_la,
    nilai_rujukan_pd,
    nilai_rujukan_pa,
    bagian_rs,
    bhp,
    bagian_perujuk,
    bagian_dokter,
    bagian_laborat,
    kso,
    menejemen,
    biaya_item,
    urut
) VALUES
('102-K.2','Hemoglobin','g/dl','13.5-18.0','13.5-18.0','12-16','12.0-16.0',0,0,0,0,0,0,0,0,1),
('102-K.2','Leukosit','/mm3','5.000-10.000','5.000-10.000','5.000-10.000','5.000-10.000',0,0,0,0,0,0,0,0,2),
('102-K.2','Diffcount','','','','','',0,0,0,0,0,0,0,0,3),
('102-K.2','Lymph%','%','20-40','20-40','20-40','20-40',0,0,0,0,0,0,0,0,4),
('102-K.2','Mid%','%','','','','',0,0,0,0,0,0,0,0,5),
('102-K.2','Gran%','%','50-70','50-70','50-70','50-70',0,0,0,0,0,0,0,0,6),
('102-K.2','Hematokrit','%','40.0-48.0','40.0-48.0','37.0-43.0','37.0-43.0',0,0,0,0,0,0,0,0,7),
('102-K.2','Trombosit','/uL','150.000-440.000','150.000-440.000','150.000-440.000','150.000-440.000',0,0,0,0,0,0,0,0,8),
('102-K.2','Erytrosit','juta','4.5-5.5','4.5-5.5','4.0-5.0','4.0-5.0',0,0,0,0,0,0,0,0,9),
('102-K.2','MCV','fL','82.0-92.0','82.0-92.0','82.0-92.0','82.0-92.0',0,0,0,0,0,0,0,0,10),
('102-K.2','MCH','pg','27.0-31.0','27.0-31.0','27.0-31.0','27.0-31.0',0,0,0,0,0,0,0,0,11),
('102-K.2','MCHC','%','32.0-37.0','32.0-37.0','32.0-37.0','32.0-37.0',0,0,0,0,0,0,0,0,12),
('102-K.2','LED','mm/jam','< 10','< 10','< 20','< 20',0,0,0,0,0,0,0,0,13),
('102-K.2','Golongan Darah','','','','','',0,0,0,0,0,0,0,0,14),
('102-K.2','Rhesus','','','','','',0,0,0,0,0,0,0,0,15),
('102-K.2','SDT/Malaria','','negatif','negatif','negatif','negatif',0,0,0,0,0,0,0,0,16);

-- DARAH RUTI dan L001 | Darah Rutin aktif
DELETE FROM template_laboratorium
WHERE kd_jenis_prw IN ('DARAH RUTI','L001');

INSERT INTO template_laboratorium (
    kd_jenis_prw,
    Pemeriksaan,
    satuan,
    nilai_rujukan_ld,
    nilai_rujukan_la,
    nilai_rujukan_pd,
    nilai_rujukan_pa,
    bagian_rs,
    bhp,
    bagian_perujuk,
    bagian_dokter,
    bagian_laborat,
    kso,
    menejemen,
    biaya_item,
    urut
) VALUES
('DARAH RUTI','Hemoglobin','g/dl','13.5-18.0','13.5-18.0','12-16','12.0-16.0',0,0,0,0,0,0,0,0,1),
('DARAH RUTI','Leukosit','/mm3','5.000-10.000','5.000-10.000','5.000-10.000','5.000-10.000',0,0,0,0,0,0,0,0,2),
('DARAH RUTI','Diffcount','','','','','',0,0,0,0,0,0,0,0,3),
('DARAH RUTI','Lymph%','%','20-40','20-40','20-40','20-40',0,0,0,0,0,0,0,0,4),
('DARAH RUTI','Mid%','%','','','','',0,0,0,0,0,0,0,0,5),
('DARAH RUTI','Gran%','%','50-70','50-70','50-70','50-70',0,0,0,0,0,0,0,0,6),
('DARAH RUTI','Hematokrit','%','40.0-48.0','40.0-48.0','37.0-43.0','37.0-43.0',0,0,0,0,0,0,0,0,7),
('DARAH RUTI','Trombosit','/uL','150.000-440.000','150.000-440.000','150.000-440.000','150.000-440.000',0,0,0,0,0,0,0,0,8),
('DARAH RUTI','Erytrosit','juta','4.5-5.5','4.5-5.5','4.0-5.0','4.0-5.0',0,0,0,0,0,0,0,0,9),
('DARAH RUTI','MCV','fL','82.0-92.0','82.0-92.0','82.0-92.0','82.0-92.0',0,0,0,0,0,0,0,0,10),
('DARAH RUTI','MCH','pg','27.0-31.0','27.0-31.0','27.0-31.0','27.0-31.0',0,0,0,0,0,0,0,0,11),
('DARAH RUTI','MCHC','%','32.0-37.0','32.0-37.0','32.0-37.0','32.0-37.0',0,0,0,0,0,0,0,0,12),
('DARAH RUTI','LED','mm/jam','< 10','< 10','< 20','< 20',0,0,0,0,0,0,0,0,13),
('DARAH RUTI','Golongan Darah','','','','','',0,0,0,0,0,0,0,0,14),
('DARAH RUTI','Rhesus','','','','','',0,0,0,0,0,0,0,0,15),
('DARAH RUTI','SDT/Malaria','','negatif','negatif','negatif','negatif',0,0,0,0,0,0,0,0,16),
('L001','Hemoglobin','g/dl','13.5-18.0','13.5-18.0','12-16','12.0-16.0',0,0,0,0,0,0,0,0,1),
('L001','Leukosit','/mm3','5.000-10.000','5.000-10.000','5.000-10.000','5.000-10.000',0,0,0,0,0,0,0,0,2),
('L001','Diffcount','','','','','',0,0,0,0,0,0,0,0,3),
('L001','Lymph%','%','20-40','20-40','20-40','20-40',0,0,0,0,0,0,0,0,4),
('L001','Mid%','%','','','','',0,0,0,0,0,0,0,0,5),
('L001','Gran%','%','50-70','50-70','50-70','50-70',0,0,0,0,0,0,0,0,6),
('L001','Hematokrit','%','40.0-48.0','40.0-48.0','37.0-43.0','37.0-43.0',0,0,0,0,0,0,0,0,7),
('L001','Trombosit','/uL','150.000-440.000','150.000-440.000','150.000-440.000','150.000-440.000',0,0,0,0,0,0,0,0,8),
('L001','Erytrosit','juta','4.5-5.5','4.5-5.5','4.0-5.0','4.0-5.0',0,0,0,0,0,0,0,0,9),
('L001','MCV','fL','82.0-92.0','82.0-92.0','82.0-92.0','82.0-92.0',0,0,0,0,0,0,0,0,10),
('L001','MCH','pg','27.0-31.0','27.0-31.0','27.0-31.0','27.0-31.0',0,0,0,0,0,0,0,0,11),
('L001','MCHC','%','32.0-37.0','32.0-37.0','32.0-37.0','32.0-37.0',0,0,0,0,0,0,0,0,12),
('L001','LED','mm/jam','< 10','< 10','< 20','< 20',0,0,0,0,0,0,0,0,13),
('L001','Golongan Darah','','','','','',0,0,0,0,0,0,0,0,14),
('L001','Rhesus','','','','','',0,0,0,0,0,0,0,0,15),
('L001','SDT/Malaria','','negatif','negatif','negatif','negatif',0,0,0,0,0,0,0,0,16);

-- L003 | Widal
DELETE FROM template_laboratorium WHERE kd_jenis_prw = 'L003';
INSERT INTO template_laboratorium (
    kd_jenis_prw, Pemeriksaan, satuan,
    nilai_rujukan_ld, nilai_rujukan_la, nilai_rujukan_pd, nilai_rujukan_pa,
    bagian_rs, bhp, bagian_perujuk, bagian_dokter, bagian_laborat, kso, menejemen, biaya_item, urut
) VALUES
('L003','Salmonella Typhi O','','Negatif','Negatif','Negatif','Negatif',0,0,0,0,0,0,0,0,1),
('L003','Salmonella Typhi H','','Negatif','Negatif','Negatif','Negatif',0,0,0,0,0,0,0,0,2),
('L003','Salmonella Paratyphi AO','','Negatif','Negatif','Negatif','Negatif',0,0,0,0,0,0,0,0,3),
('L003','Salmonella Paratyphi BO','','Negatif','Negatif','Negatif','Negatif',0,0,0,0,0,0,0,0,4);

-- L006 | CRP
DELETE FROM template_laboratorium WHERE kd_jenis_prw = 'L006';
INSERT INTO template_laboratorium (
    kd_jenis_prw, Pemeriksaan, satuan,
    nilai_rujukan_ld, nilai_rujukan_la, nilai_rujukan_pd, nilai_rujukan_pa,
    bagian_rs, bhp, bagian_perujuk, bagian_dokter, bagian_laborat, kso, menejemen, biaya_item, urut
) VALUES
('L006','CRP','mg/L','neg(<6)/pos(>6)','neg(<6)/pos(>6)','neg(<6)/pos(>6)','neg(<6)/pos(>6)',0,0,0,0,0,0,0,0,1);

-- L007 | Urine Lengkap
DELETE FROM template_laboratorium WHERE kd_jenis_prw='L007';
INSERT INTO template_laboratorium (
    kd_jenis_prw, Pemeriksaan, satuan,
    nilai_rujukan_ld, nilai_rujukan_la, nilai_rujukan_pd, nilai_rujukan_pa,
    bagian_rs, bhp, bagian_perujuk, bagian_dokter, bagian_laborat, kso, menejemen, biaya_item, urut
) VALUES
('L007','Warna','','kuning','kuning','kuning','kuning',0,0,0,0,0,0,0,0,1),
('L007','Kejernihan','','jernih','jernih','jernih','jernih',0,0,0,0,0,0,0,0,2),
('L007','pH','','6.0 - 7.0','6.0 - 7.0','6.0 - 7.0','6.0 - 7.0',0,0,0,0,0,0,0,0,3),
('L007','Berat Jenis','','1.003 - 1.030','1.003 - 1.030','1.003 - 1.030','1.003 - 1.030',0,0,0,0,0,0,0,0,4),
('L007','Protein','','negatif','negatif','negatif','negatif',0,0,0,0,0,0,0,0,5),
('L007','Glukosa','','negatif','negatif','negatif','negatif',0,0,0,0,0,0,0,0,6),
('L007','Urobilin','','normal','normal','normal','normal',0,0,0,0,0,0,0,0,7),
('L007','Bilirubin','','negatif','negatif','negatif','negatif',0,0,0,0,0,0,0,0,8),
('L007','Keton','','negatif','negatif','negatif','negatif',0,0,0,0,0,0,0,0,9),
('L007','Nitrit','','negatif','negatif','negatif','negatif',0,0,0,0,0,0,0,0,10),
('L007','Blood','','negatif','negatif','negatif','negatif',0,0,0,0,0,0,0,0,11),
('L007','Leukosit','','negatif','negatif','negatif','negatif',0,0,0,0,0,0,0,0,12),
('L007','Sedimen','','','','','',0,0,0,0,0,0,0,0,13),
('L007','Epitel','','','','','',0,0,0,0,0,0,0,0,14),
('L007','Squamous','','0 - 1/LPB','0 - 1/LPB','0 - 1/LPB','0 - 1/LPB',0,0,0,0,0,0,0,0,15),
('L007','Transtitional','','negatif','negatif','negatif','negatif',0,0,0,0,0,0,0,0,16),
('L007','Renalis','','negatif','negatif','negatif','negatif',0,0,0,0,0,0,0,0,17),
('L007','Leukosit','','1 - 2/LPB','1 - 2/LPB','1 - 2/LPB','1 - 2/LPB',0,0,0,0,0,0,0,0,18),
('L007','Eritrosit','','0 - 1/LPB','0 - 1/LPB','0 - 1/LPB','0 - 1/LPB',0,0,0,0,0,0,0,0,19),
('L007','Silnder / Cash','','negatif','negatif','negatif','negatif',0,0,0,0,0,0,0,0,20),
('L007','Kristal','','negatif','negatif','negatif','negatif',0,0,0,0,0,0,0,0,21),
('L007','Bakteri','','negatif','negatif','negatif','negatif',0,0,0,0,0,0,0,0,22),
('L007','Hypha/pseudohypha/sel ragi','','negatif','negatif','negatif','negatif',0,0,0,0,0,0,0,0,23);

-- L023 | HIV
DELETE FROM template_laboratorium WHERE kd_jenis_prw='L023';
INSERT INTO template_laboratorium (
    kd_jenis_prw, Pemeriksaan, satuan,
    nilai_rujukan_ld, nilai_rujukan_la, nilai_rujukan_pd, nilai_rujukan_pa,
    bagian_rs, bhp, bagian_perujuk, bagian_dokter, bagian_laborat, kso, menejemen, biaya_item, urut
) VALUES
('L023','HIV','','Non Reaktif','Non Reaktif','Non Reaktif','Non Reaktif',0,0,0,0,0,0,0,0,1);

-- L024 | HbsAg
DELETE FROM template_laboratorium WHERE kd_jenis_prw='L024';
INSERT INTO template_laboratorium (
    kd_jenis_prw, Pemeriksaan, satuan,
    nilai_rujukan_ld, nilai_rujukan_la, nilai_rujukan_pd, nilai_rujukan_pa,
    bagian_rs, bhp, bagian_perujuk, bagian_dokter, bagian_laborat, kso, menejemen, biaya_item, urut
) VALUES
('L024','HbsAg','','Negatif','Negatif','Negatif','Negatif',0,0,0,0,0,0,0,0,1);

-- L020 | Glukosa Sewaktu
DELETE FROM template_laboratorium WHERE kd_jenis_prw='L020';
INSERT INTO template_laboratorium (
    kd_jenis_prw, Pemeriksaan, satuan,
    nilai_rujukan_ld, nilai_rujukan_la, nilai_rujukan_pd, nilai_rujukan_pa,
    bagian_rs, bhp, bagian_perujuk, bagian_dokter, bagian_laborat, kso, menejemen, biaya_item, urut
) VALUES
('L020','Glukosa Sewaktu','mg/dl','79-150','79-150','75-150','75-150',0,0,0,0,0,0,0,0,1);

-- GLUKOSA PU | Glukosa Puasa
DELETE FROM template_laboratorium WHERE kd_jenis_prw='GLUKOSA PU';
INSERT INTO template_laboratorium (
    kd_jenis_prw, Pemeriksaan, satuan,
    nilai_rujukan_ld, nilai_rujukan_la, nilai_rujukan_pd, nilai_rujukan_pa,
    bagian_rs, bhp, bagian_perujuk, bagian_dokter, bagian_laborat, kso, menejemen, biaya_item, urut
) VALUES
('GLUKOSA PU','Glukosa Puasa','mg/dl','70-110','70-110','70-110','70-110',0,0,0,0,0,0,0,0,1);

-- GLUKOSA 2 | Glukosa 2 Jam PP
DELETE FROM template_laboratorium WHERE kd_jenis_prw='GLUKOSA 2';


-- L011-L014 | Bilirubin
DELETE FROM template_laboratorium WHERE kd_jenis_prw IN ('L011','L012','L013','L014');
INSERT INTO template_laboratorium (
    kd_jenis_prw, Pemeriksaan, satuan,
    nilai_rujukan_ld, nilai_rujukan_la, nilai_rujukan_pd, nilai_rujukan_pa,
    bagian_rs, bhp, bagian_perujuk, bagian_dokter, bagian_laborat, kso, menejemen, biaya_item, urut
) VALUES
('L011','Bilirubin Total','mg/dl','< 1,1','< 1,1','< 1,1','< 1,1',0,0,0,0,0,0,0,0,1),
('L012','Bilirubin Direct','mg/dl','< 0,25','< 0,25','< 0,25','< 0,25',0,0,0,0,0,0,0,0,1),
('L013','Bilirubin Indirect','mg/dl','0,2 - 0,8','0,2 - 0,8','0,2 - 0,8','0,2 - 0,8',0,0,0,0,0,0,0,0,1),
('L014','Bilirubin Lengkap','mg/dl','lihat komponen','lihat komponen','lihat komponen','lihat komponen',0,0,0,0,0,0,0,0,1);

-- L010, L015, L016, L019 | Kreatinin, GOT, GPT, Asam Urat
DELETE FROM template_laboratorium WHERE kd_jenis_prw IN ('L010','L015','L016','L019');
INSERT INTO template_laboratorium (
    kd_jenis_prw, Pemeriksaan, satuan,
    nilai_rujukan_ld, nilai_rujukan_la, nilai_rujukan_pd, nilai_rujukan_pa,
    bagian_rs, bhp, bagian_perujuk, bagian_dokter, bagian_laborat, kso, menejemen, biaya_item, urut
) VALUES
('L010','Kreatinin','mg/dl','0,6-1,4','0,6-1,4','0,5-1,1','0,5-1,1',0,0,0,0,0,0,0,0,1),
('L015','GOT','U/L','0-35','0-35','0-31','0-31',0,0,0,0,0,0,0,0,1),
('L016','GPT','U/L','0-45','0-45','0-34','0-34',0,0,0,0,0,0,0,0,1),
('L019','Asam Urat','mg/dl','2,5-7,0','2,5-7,0','2,5-5,4','2,5-5,4',0,0,0,0,0,0,0,0,1);

-- TUBEC dan TUBEC AS
DELETE FROM template_laboratorium WHERE kd_jenis_prw IN ('TUBEC','TUBEC AS');
INSERT INTO template_laboratorium (
    kd_jenis_prw, Pemeriksaan, satuan,
    nilai_rujukan_ld, nilai_rujukan_la, nilai_rujukan_pd, nilai_rujukan_pa,
    bagian_rs, bhp, bagian_perujuk, bagian_dokter, bagian_laborat, kso, menejemen, biaya_item, urut
) VALUES
('TUBEC','IgM Salmonella Typhi (Tubex TF)','','<= 2 : negatif','<= 2 : negatif','<= 2 : negatif','<= 2 : negatif',0,0,0,0,0,0,0,0,1),
('TUBEC AS','IgM Salmonella Typhi (Tubex TF)','','<= 2 : negatif','<= 2 : negatif','<= 2 : negatif','<= 2 : negatif',0,0,0,0,0,0,0,0,1);

-- Mapping SATUSEHAT Lab per id_template yang dibuat ulang di atas
INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'718-7','http://loinc.org','Hemoglobin [Mass/volume] in Blood','119297000','http://snomed.info/sct','Blood specimen'
FROM template_laboratorium WHERE kd_jenis_prw IN ('DARAH RUTI','L001') AND Pemeriksaan='Hemoglobin'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'6690-2','http://loinc.org','Leukocytes [#/volume] in Blood by Automated count','119297000','http://snomed.info/sct','Blood specimen'
FROM template_laboratorium WHERE kd_jenis_prw IN ('DARAH RUTI','L001') AND Pemeriksaan='Leukosit' AND urut=2
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'57023-4','http://loinc.org','Auto Differential panel - Blood','119297000','http://snomed.info/sct','Blood specimen'
FROM template_laboratorium WHERE kd_jenis_prw IN ('DARAH RUTI','L001') AND Pemeriksaan='Diffcount'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'736-9','http://loinc.org','Lymphocytes/Leukocytes in Blood by Automated count','119297000','http://snomed.info/sct','Blood specimen'
FROM template_laboratorium WHERE kd_jenis_prw IN ('DARAH RUTI','L001') AND Pemeriksaan='Lymph%'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'32155-4','http://loinc.org','Basophils+Eosinophils+Monocytes/Leukocytes in Blood by Automated count','119297000','http://snomed.info/sct','Blood specimen'
FROM template_laboratorium WHERE kd_jenis_prw IN ('DARAH RUTI','L001') AND Pemeriksaan='Mid%'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'19023-1','http://loinc.org','Granulocytes/Leukocytes in Blood by Automated count','119297000','http://snomed.info/sct','Blood specimen'
FROM template_laboratorium WHERE kd_jenis_prw IN ('DARAH RUTI','L001') AND Pemeriksaan='Gran%'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'4544-3','http://loinc.org','Hematocrit [Volume Fraction] of Blood by Automated count','119297000','http://snomed.info/sct','Blood specimen'
FROM template_laboratorium WHERE kd_jenis_prw IN ('DARAH RUTI','L001') AND Pemeriksaan='Hematokrit'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'777-3','http://loinc.org','Platelets [#/volume] in Blood by Automated count','119297000','http://snomed.info/sct','Blood specimen'
FROM template_laboratorium WHERE kd_jenis_prw IN ('DARAH RUTI','L001') AND Pemeriksaan='Trombosit'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'789-8','http://loinc.org','Erythrocytes [#/volume] in Blood by Automated count','119297000','http://snomed.info/sct','Blood specimen'
FROM template_laboratorium WHERE kd_jenis_prw IN ('DARAH RUTI','L001') AND Pemeriksaan='Erytrosit'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'787-2','http://loinc.org','MCV [Entitic mean volume] in Red Blood Cells by Automated count','119297000','http://snomed.info/sct','Blood specimen'
FROM template_laboratorium WHERE kd_jenis_prw IN ('DARAH RUTI','L001') AND Pemeriksaan='MCV'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'785-6','http://loinc.org','MCH [Entitic mass] by Automated count','119297000','http://snomed.info/sct','Blood specimen'
FROM template_laboratorium WHERE kd_jenis_prw IN ('DARAH RUTI','L001') AND Pemeriksaan='MCH'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'786-4','http://loinc.org','MCHC [Entitic Mass/volume] in Red Blood Cells by Automated count','119297000','http://snomed.info/sct','Blood specimen'
FROM template_laboratorium WHERE kd_jenis_prw IN ('DARAH RUTI','L001') AND Pemeriksaan='MCHC'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'4537-7','http://loinc.org','Erythrocyte sedimentation rate in Blood by Westergren method','119297000','http://snomed.info/sct','Blood specimen'
FROM template_laboratorium WHERE kd_jenis_prw IN ('DARAH RUTI','L001') AND Pemeriksaan='LED'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'883-9','http://loinc.org','ABO group [Type] in Blood','119297000','http://snomed.info/sct','Blood specimen'
FROM template_laboratorium WHERE kd_jenis_prw IN ('DARAH RUTI','L001') AND Pemeriksaan='Golongan Darah'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'10331-7','http://loinc.org','Rh [Type] in Blood','119297000','http://snomed.info/sct','Blood specimen'
FROM template_laboratorium WHERE kd_jenis_prw IN ('DARAH RUTI','L001') AND Pemeriksaan='Rhesus'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'637-9','http://loinc.org','Plasmodium sp identified in Blood by Thick film','119297000','http://snomed.info/sct','Blood specimen'
FROM template_laboratorium WHERE kd_jenis_prw IN ('DARAH RUTI','L001') AND Pemeriksaan='SDT/Malaria'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'1988-5','http://loinc.org','C reactive protein [Mass/volume] in Serum or Plasma','119364003','http://snomed.info/sct','Serum specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L006'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'5778-6','http://loinc.org','Color of Urine','122575003','http://snomed.info/sct','Urine specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L007' AND Pemeriksaan='Warna'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'32167-9','http://loinc.org','Clarity of Urine','122575003','http://snomed.info/sct','Urine specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L007' AND Pemeriksaan='Kejernihan'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'5803-2','http://loinc.org','pH of Urine by Test strip','122575003','http://snomed.info/sct','Urine specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L007' AND Pemeriksaan='pH'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'2965-2','http://loinc.org','Specific gravity of Urine','122575003','http://snomed.info/sct','Urine specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L007' AND Pemeriksaan='Berat Jenis'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'20454-5','http://loinc.org','Protein [Presence] in Urine by Test strip','122575003','http://snomed.info/sct','Urine specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L007' AND Pemeriksaan='Protein'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'25428-4','http://loinc.org','Glucose [Presence] in Urine by Test strip','122575003','http://snomed.info/sct','Urine specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L007' AND Pemeriksaan='Glukosa'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'5818-0','http://loinc.org','Urobilinogen [Presence] in Urine by Test strip','122575003','http://snomed.info/sct','Urine specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L007' AND Pemeriksaan='Urobilin'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'5770-3','http://loinc.org','Bilirubin.total [Presence] in Urine by Test strip','122575003','http://snomed.info/sct','Urine specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L007' AND Pemeriksaan='Bilirubin'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'2514-8','http://loinc.org','Ketones [Presence] in Urine by Test strip','122575003','http://snomed.info/sct','Urine specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L007' AND Pemeriksaan='Keton'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'5802-4','http://loinc.org','Nitrite [Presence] in Urine by Test strip','122575003','http://snomed.info/sct','Urine specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L007' AND Pemeriksaan='Nitrit'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'5794-3','http://loinc.org','Hemoglobin [Presence] in Urine by Test strip','122575003','http://snomed.info/sct','Urine specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L007' AND Pemeriksaan='Blood'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'5799-2','http://loinc.org','Leukocyte esterase [Presence] in Urine by Test strip','122575003','http://snomed.info/sct','Urine specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L007' AND Pemeriksaan='Leukosit' AND urut=12
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'24365-9','http://loinc.org','Urinalysis microscopic panel - Urine sediment','122575003','http://snomed.info/sct','Urine specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L007' AND Pemeriksaan='Sedimen'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'20453-7','http://loinc.org','Epithelial cells [Presence] in Urine sediment by Light microscopy','122575003','http://snomed.info/sct','Urine specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L007' AND Pemeriksaan='Epitel'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'12258-0','http://loinc.org','Epithelial cells.squamous [Presence] in Urine sediment by Light microscopy','122575003','http://snomed.info/sct','Urine specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L007' AND Pemeriksaan='Squamous'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'8249-5','http://loinc.org','Transitional cells [Presence] in Urine sediment by Light microscopy','122575003','http://snomed.info/sct','Urine specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L007' AND Pemeriksaan='Transtitional'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'12248-1','http://loinc.org','Epithelial cells.renal [Presence] in Urine sediment by Light microscopy','122575003','http://snomed.info/sct','Urine specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L007' AND Pemeriksaan='Renalis'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'20455-2','http://loinc.org','Leukocytes [Presence] in Urine sediment by Light microscopy','122575003','http://snomed.info/sct','Urine specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L007' AND Pemeriksaan='Leukosit' AND urut=18
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'32776-7','http://loinc.org','Erythrocytes [Presence] in Urine sediment by Light microscopy','122575003','http://snomed.info/sct','Urine specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L007' AND Pemeriksaan='Eritrosit'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'24124-0','http://loinc.org','Casts [Presence] in Urine sediment by Light microscopy','122575003','http://snomed.info/sct','Urine specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L007' AND Pemeriksaan='Silnder / Cash'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'49755-2','http://loinc.org','Crystals [Presence] in Urine sediment by Light microscopy','122575003','http://snomed.info/sct','Urine specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L007' AND Pemeriksaan='Kristal'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'25145-4','http://loinc.org','Bacteria [Presence] in Urine sediment by Light microscopy','122575003','http://snomed.info/sct','Urine specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L007' AND Pemeriksaan='Bakteri'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'32356-8','http://loinc.org','Yeast [Presence] in Urine sediment by Light microscopy','122575003','http://snomed.info/sct','Urine specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L007' AND Pemeriksaan='Hypha/pseudohypha/sel ragi'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'31201-7','http://loinc.org','HIV 1+2 Ab [Presence] in Serum or Plasma by Immunoassay','119364003','http://snomed.info/sct','Serum specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L023'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'5196-1','http://loinc.org','Hepatitis B virus surface Ag [Presence] in Serum or Plasma by Immunoassay','119364003','http://snomed.info/sct','Serum specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L024'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'2345-7','http://loinc.org','Glucose [Mass/volume] in Serum or Plasma','119364003','http://snomed.info/sct','Serum specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L020'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'1558-6','http://loinc.org','Fasting glucose [Mass/volume] in Serum or Plasma','119364003','http://snomed.info/sct','Serum specimen'
FROM template_laboratorium WHERE kd_jenis_prw='GLUKOSA PU'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'1521-4','http://loinc.org','Glucose [Mass/volume] in Serum or Plasma --2 hours post meal','119364003','http://snomed.info/sct','Serum specimen'
FROM template_laboratorium WHERE kd_jenis_prw='GLUKOSA 2'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'1975-2','http://loinc.org','Bilirubin.total [Mass/volume] in Serum or Plasma','119364003','http://snomed.info/sct','Serum specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L011'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'1968-7','http://loinc.org','Bilirubin.direct [Mass/volume] in Serum or Plasma','119364003','http://snomed.info/sct','Serum specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L012'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'1971-1','http://loinc.org','Bilirubin.indirect [Mass/volume] in Serum or Plasma','119364003','http://snomed.info/sct','Serum specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L013'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'34543-9','http://loinc.org','Bilirubin direct and total panel [Mass/volume] - Serum or Plasma','119364003','http://snomed.info/sct','Serum specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L014'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'2160-0','http://loinc.org','Creatinine [Mass/volume] in Serum or Plasma','119364003','http://snomed.info/sct','Serum specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L010'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'1920-8','http://loinc.org','Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma','119364003','http://snomed.info/sct','Serum specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L015'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'1742-6','http://loinc.org','Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma','119364003','http://snomed.info/sct','Serum specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L016'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

INSERT INTO satu_sehat_mapping_lab (id_template,code,system,display,sampel_code,sampel_system,sampel_display)
SELECT id_template,'3084-1','http://loinc.org','Urate [Mass/volume] in Serum or Plasma','119364003','http://snomed.info/sct','Serum specimen'
FROM template_laboratorium WHERE kd_jenis_prw='L019'
ON DUPLICATE KEY UPDATE code=VALUES(code),system=VALUES(system),display=VALUES(display),sampel_code=VALUES(sampel_code),sampel_system=VALUES(sampel_system),sampel_display=VALUES(sampel_display);

-- Catatan:
-- L003 | Widal dan TUBEC/TUBEC AS pada sesi ini baru dibuat template_laboratorium-nya.
-- Mapping satu_sehat_mapping_lab untuk item-item tersebut belum dieksekusi.

COMMIT;
