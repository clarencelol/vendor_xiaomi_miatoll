/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 69);

DELETE FROM qcril_emergency_source_voice_table where MCC = '452' AND NUMBER = '112';
DELETE FROM qcril_emergency_source_voice_table where MCC = '452' AND NUMBER = '113';
DELETE FROM qcril_emergency_source_voice_table where MCC = '452' AND NUMBER = '114';
DELETE FROM qcril_emergency_source_voice_table where MCC = '452' AND NUMBER = '115';

INSERT INTO "qcril_emergency_source_voice_table" VALUES('452','112','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('452','113','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('452','114','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('452','115','','full');


COMMIT TRANSACTION;
