/*
  Copyright (c) 2023 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 71);

DELETE FROM qcril_emergency_source_mcc_table where MCC = '621' AND NUMBER = '767';

INSERT INTO "qcril_emergency_source_mcc_table" VALUES('621','767','','');

COMMIT TRANSACTION;
