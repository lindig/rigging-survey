.mode csv
drop table if exists "rigging";
CREATE TABLE IF NOT EXISTS "rigging"(
  "Olympic" TEXT,
  "Class" TEXT,
  "Finish" number,
  "Country" TEXT,
  "BoatManufacturer" TEXT,
  "BoatModel" TEXT,
  "Rigger" TEXT,
  "Mount" TEXT,
  "Backstay" TEXT,
  "Seat" number,
  "Span" number,
  "Spread" number,
  "OarManufacturer" TEXT,
  "OarModel" TEXT,
  "OarShaft" TEXT,
  "OarLength" number,
  "OarInboard" number,
  "OarOutboard" number,
  "BladeShape" TEXT,
  "BladeLength" number,
  "BladeWidth" number,
  "VortexEdge" TEXT,
  "WorkTrough" number,
  "WorkHeels" number,
  "WorkToes" number,
  "StretcherAngle" number,
  "SwivelAboveSeatStarboard" number,
  "SwivelAboveSeatPortside" number,
  "SwivelAboveSeatSweep" number,
  "SeatAboveHeels" number,
  "PitchStarboard" number,
  "PitchPortside" number,
  "PitchSweep" number,
  "MeasurementDate" TEXT);
.header off
.import "rigging.csv" rigging
.mode table

update rigging set spread = null where spread = "" or spread = "?";
update rigging set span = null where span = "" or span = "?";
update rigging set spread = span where span < 100 and Class like "%-";
update rigging set span = null where span < 100 and Class like "%-";
update rigging set OarInboard = null where OarInboard = "";
update rigging set OarOutboard = null where OarOutboard = "";
update rigging set Class = "M1x" where Class = "M1X";

update rigging set Class = null where Class = "";
update rigging set Finish = null where Finish = "";
update rigging set Country = null where Country = "";
update rigging set BoatManufacturer = null where BoatManufacturer = "";
update rigging set BoatModel = null where BoatModel = "";
update rigging set Rigger = null where Rigger = "";
update rigging set Mount = null where Mount = "";
update rigging set Backstay = null where Backstay = "";
update rigging set Seat = null where Seat = "";
update rigging set Span = null where Span = "";
update rigging set Spread = null where Spread = "";
update rigging set OarManufacturer = null where OarManufacturer = "";
update rigging set OarModel = null where OarModel = "";
update rigging set OarShaft = null where OarShaft = "";
update rigging set OarLength = null where OarLength = "";
update rigging set OarInboard = null where OarInboard = "";
update rigging set OarOutboard = null where OarOutboard = "";
update rigging set BladeShape = null where BladeShape = "";
update rigging set BladeLength = null where BladeLength = "";
update rigging set BladeWidth = null where BladeWidth = "";
update rigging set VortexEdge = null where VortexEdge = "";
update rigging set WorkTrough = null where WorkTrough = "";
update rigging set WorkHeels = null where WorkHeels = "";
update rigging set WorkToes = null where WorkToes = "";
update rigging set StretcherAngle = null where StretcherAngle = "";
update rigging set SwivelAboveSeatStarboard = null where SwivelAboveSeatStarboard = "";
update rigging set SwivelAboveSeatPortside = null where SwivelAboveSeatPortside = "";
update rigging set SwivelAboveSeatSweep = null where SwivelAboveSeatSweep = "";
update rigging set SeatAboveHeels = null where SeatAboveHeels = "";
update rigging set PitchStarboard = null where PitchStarboard = "";
update rigging set PitchPortside = null where PitchPortside = "";
update rigging set PitchSweep = null where PitchSweep = "";


