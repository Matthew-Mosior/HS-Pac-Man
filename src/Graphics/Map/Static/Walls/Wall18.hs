module Graphics.Map.Static.Walls.Wall18 where


import Graphics.Map.Static.Walls.Common

import Data.Massiv.Array
import Data.Sequence as DSeq
import Graphics.Gloss.Raster.Massiv.Internal


{-Define the Picture that makes up the eighteenth wall of the map.-}

wall18 :: IO (Seq (Array S Ix2 ColorMassiv,(Int,Int)))
wall18 = do
  return DSeq.empty
  {-
  wall181 <- createWall (432,1096)
  wall182 <- createWall (440,1096)
  wall183 <- createWall (448,1096)
  wall184 <- createWall (456,1096)
  wall185 <- createWall (464,1096)
  wall186 <- createWall (472,1096)
  wall187 <- createWall (480,1096)
  wall188 <- createWall (488,1096)
  wall189 <- createWall (496,1096)
  wall1810 <- createWall (504,1096)
  wall1811 <- createWall (512,1096)
  wall1812 <- createWall (520,1096)
  wall1813 <- createWall (528,1096)
  wall1814 <- createWall (536,1096)
  wall1815 <- createWall (544,1096)
  wall1816 <- createWall (552,1096)
  wall1817 <- createWall (560,1096)
  wall1818 <- createWall (568,1096)
  wall1819 <- createWall (576,1096)
  wall1820 <- createWall (584,1096)
  wall1821 <- createWall (592,1096)
  wall1822 <- createWall (600,1096)
  wall1823 <- createWall (608,1096)
  wall1824 <- createWall (616,1096)
  wall1825 <- createWall (624,1096)
  wall1826 <- createWall (632,1096)
  wall1827 <- createWall (640,1096)
  wall1828 <- createWall (648,1096)
  wall1829 <- createWall (656,1096)
  wall1830 <- createWall (664,1096)
  wall1831 <- createWall (672,1096)
  wall1832 <- createWall (680,1096)
  wall1833 <- createWall (688,1104)
  wall1834 <- createWall (696,1112)
  wall1835 <- createWall (696,1120)
  wall1836 <- createWall (688,1128)
  wall1837 <- createWall (680,1136)
  wall1838 <- createWall (672,1136)
  wall1839 <- createWall (664,1136)
  wall1840 <- createWall (656,1136)
  wall1841 <- createWall (648,1136)
  wall1842 <- createWall (640,1136)
  wall1843 <- createWall (632,1136)
  wall1844 <- createWall (624,1136)
  wall1845 <- createWall (616,1136)
  wall1846 <- createWall (608,1136)
  wall1847 <- createWall (600,1136)
  wall1848 <- createWall (592,1136)
  wall1849 <- createWall (584,1144)
  wall1850 <- createWall (576,1152)
  wall1851 <- createWall (576,1160)
  wall1852 <- createWall (576,1168)
  wall1853 <- createWall (576,1176)
  wall1854 <- createWall (576,1184)
  wall1855 <- createWall (576,1192)
  wall1856 <- createWall (576,1200)
  wall1857 <- createWall (576,1208)
  wall1858 <- createWall (576,1216)
  wall1859 <- createWall (576,1224)
  wall1860 <- createWall (576,1232)
  wall1861 <- createWall (576,1240)
  wall1862 <- createWall (568,1248)
  wall1863 <- createWall (560,1256)
  wall1864 <- createWall (552,1256)
  wall1865 <- createWall (544,1248)
  wall1866 <- createWall (536,1240)
  wall1867 <- createWall (536,1232)
  wall1868 <- createWall (536,1224)
  wall1869 <- createWall (536,1216)
  wall1870 <- createWall (536,1208)
  wall1871 <- createWall (536,1200)
  wall1872 <- createWall (536,1192)
  wall1873 <- createWall (536,1184)
  wall1874 <- createWall (536,1176)
  wall1875 <- createWall (536,1168)
  wall1876 <- createWall (536,1160)
  wall1877 <- createWall (536,1152)
  wall1878 <- createWall (528,1144)
  wall1879 <- createWall (520,1136)
  wall1880 <- createWall (512,1136)
  wall1881 <- createWall (504,1136)
  wall1882 <- createWall (496,1136)
  wall1883 <- createWall (488,1136)
  wall1884 <- createWall (480,1136)
  wall1885 <- createWall (472,1136)
  wall1886 <- createWall (464,1136)
  wall1887 <- createWall (456,1136)
  wall1888 <- createWall (448,1136)
  wall1889 <- createWall (440,1136)
  wall1890 <- createWall (432,1136)
  wall1891 <- createWall (424,1128)
  wall1892 <- createWall (416,1120)
  wall1893 <- createWall (416,1112)
  wall1894 <- createWall (424,1104)
  return $ [ wall181 
           , wall182 
           , wall183 
           , wall184 
           , wall185 
           , wall186 
           , wall187 
           , wall188 
           , wall189 
           , wall1810 
           , wall1811 
           , wall1812 
           , wall1813 
           , wall1814 
           , wall1815 
           , wall1816 
           , wall1817 
           , wall1818 
           , wall1819 
           , wall1820 
           , wall1821 
           , wall1822 
           , wall1823 
           , wall1824 
           , wall1825 
           , wall1826 
           , wall1827 
           , wall1828 
           , wall1829 
           , wall1830 
           , wall1831 
           , wall1832 
           , wall1833 
           , wall1834 
           , wall1835 
           , wall1836 
           , wall1837 
           , wall1838 
           , wall1839 
           , wall1840 
           , wall1841 
           , wall1842 
           , wall1843 
           , wall1844 
           , wall1845 
           , wall1846 
           , wall1847 
           , wall1848 
           , wall1849 
           , wall1850 
           , wall1851 
           , wall1852 
           , wall1853 
           , wall1854 
           , wall1855 
           , wall1856 
           , wall1857 
           , wall1858 
           , wall1859 
           , wall1860 
           , wall1861 
           , wall1862 
           , wall1863 
           , wall1864 
           , wall1865 
           , wall1866 
           , wall1867 
           , wall1868 
           , wall1869 
           , wall1870 
           , wall1871 
           , wall1872 
           , wall1873 
           , wall1874 
           , wall1875 
           , wall1876 
           , wall1877 
           , wall1878 
           , wall1879 
           , wall1880 
           , wall1881 
           , wall1882 
           , wall1883 
           , wall1884 
           , wall1885 
           , wall1886 
           , wall1887 
           , wall1888 
           , wall1889 
           , wall1890 
           , wall1891 
           , wall1892 
           , wall1893 
           , wall1894
           ]
  -}

{------------------------------------------------------------------}
