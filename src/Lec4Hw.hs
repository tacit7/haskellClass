module Lec4Hw where
-- See below for details

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

