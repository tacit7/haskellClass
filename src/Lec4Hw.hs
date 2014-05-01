module Lec4Hw where
-- Convert between metric and imperial.
-- convert :: (Double, [Char]) -> (Double, [Char])
--    m ↔ yd
--    L ↔ gal
--    kg ↔ lb

-- Prelude> convert (1, "m")
-- (1.09361, "yd")
-- Prelude> convert (1, "L")
--  (0.264172, "gal")
-- Prelude> convert (1, "kg")
-- (2.20462, "lb")

-- My solution
convert :: (Double, [Char]) -> (Double, [Char])
convert (d, "yd") = ( metersToYards d, "m")
convert (d, "m")  = ( yardsToMeters d, "yd")
convert (d, "l")  = ( litersToGallons d, "g")

metersToYards  :: Double -> Double
metersToYards d = d * m2y

yardsToMeters :: Double -> Double
yardsToMeters d = d * y2m


litersToGallons :: Double -> Double
litersToGallons d = d *l2g
-- vars
m2y = 0.9144
y2m = 1.09361
l2g = 0.264172


-- The right solution from the class slides

data Unit = Meter -- Unit as in measurement and not ()
          | Yard
          | Litre
          | Gallon
          | Kilogram
          | Pound
      deriving (Ord, Eq) -- <-- class types
instance Show Unit where
  show Meter    = "m"
  show Yard     = "yd"
  show Litre    = "l"
  show Gallon   = "gal"
  show Kilogram = "kg"
  show Pound    = "lb"

-- map the factors to each unit
factor :: Unit -> Double
factor Meter    = 1.09361
factor Litre    = 0.264172
factor Kilogram = 2.20462
factor Yard     = 1 / (factor Meter)
factor Gallon   = 1 / (factor Litre)
factor Pound    = 1 / (factor Kilogram)

-- map the the units with their reciprocal unit
inverse :: Unit -> Unit
inverse Meter    = Yard
inverse Yard     = Meter
inverse Litre    = Gallon
inverse Gallon   = Litre
inverse Kilogram = Pound
inverse Pound    = Kilogram

convert2 :: (Double, Unit) -> (Double, Unit) -- using convert2 because convert is taken already
convert2 (n, u) = (n * (factor u), inverse u)
--                (n * factorConst, theInverseUnit)

data Measurement = Measurement Double Unit deriving (Eq)
instance Show Measurement where
  show (Measurement n u) = (show n) ++ " " ++ (show u)

conv (Measurement n u) = measurement $ convert2 (n, u)
      where measurement (n1, u1) = Measurement n1 u1