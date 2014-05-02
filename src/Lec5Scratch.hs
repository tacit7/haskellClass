module Lec5Scratch where

data MetricUnit = Meter | Liter | KiloGram
                  deriving (Show, Eq)

data ImperialUnit = Yard | Gallon | Pound
                    deriving (Show, Eq)

-- So we have Metric and Iperial
-- but units are usually are accompanied by a value
-- The Following data type handles this
data Measurement = MetricMeasurement   Double MetricUnit
                 | ImperialMeasurement Double ImperialUnit
                   deriving(Show)

convert :: Measurement -> Measurement
convert (MetricMeasurement d u)
  | u==Meter    = ImperialMeasurement (1.0936*d) Yard
  | u==Liter    = ImperialMeasurement (0.2642*d) Gallon
  | u==KiloGram = ImperialMeasurement (2.2046*d) Pound
convert (ImperialMeasurement x u)
  | u==Yard     = MetricMeasurement   (0.9144*x) Meter
  | u==Gallon   = MetricMeasurement   (3.7854*x) Liter
  | u==Pound    = MetricMeasurement   (0.4536*x) KiloGram

say :: MetricUnit -> String
say Meter    = "m"
say Liter    = "l"
say KiloGram = "kg"