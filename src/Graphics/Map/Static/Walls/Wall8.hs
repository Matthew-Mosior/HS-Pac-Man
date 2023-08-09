module Graphics.Map.Static.Walls.Wall8 where


import Graphics.Map.Static.Walls.Common

import Data.Massiv.Array
import Data.Sequence as DSeq
import Graphics.Gloss.Raster.Massiv.Internal


{-Define the Picture that makes up the eigth wall of the map.-}

wall8 :: IO (Seq (Array S Ix2 ColorMassiv,(Int,Int)))
wall8 = do
  return DSeq.empty
  {-
  wall81 <- createWall (792,376)
  wall82 <- createWall (800,376)
  wall83 <- createWall (808,384)
  wall84 <- createWall (816,392)
  wall85 <- createWall (816,400)
  wall86 <- createWall (816,408)
  wall87 <- createWall (816,416)
  wall88 <- createWall (816,424)
  wall89 <- createWall (816,432)
  wall810 <- createWall (816,440)
  wall811 <- createWall (816,448)
  wall812 <- createWall (816,456)
  wall813 <- createWall (816,464)
  wall814 <- createWall (816,472)
  wall815 <- createWall (816,480)
  wall816 <- createWall (816,488)
  wall817 <- createWall (816,496)
  wall818 <- createWall (816,504)
  wall819 <- createWall (816,512)
  wall820 <- createWall (816,520)
  wall821 <- createWall (816,528)
  wall822 <- createWall (816,536)
  wall823 <- createWall (816,544)
  wall824 <- createWall (816,552)
  wall825 <- createWall (816,560)
  wall826 <- createWall (816,568)
  wall827 <- createWall (816,576)
  wall828 <- createWall (816,584)
  wall829 <- createWall (816,592)
  wall830 <- createWall (816,600)
  wall831 <- createWall (816,608)
  wall832 <- createWall (816,616)
  wall833 <- createWall (816,624)
  wall834 <- createWall (816,632)
  wall835 <- createWall (816,640)
  wall836 <- createWall (808,648)
  wall837 <- createWall (800,656)
  wall838 <- createWall (792,656)
  wall839 <- createWall (784,648)
  wall840 <- createWall (776,640)
  wall841 <- createWall (776,632)
  wall842 <- createWall (776,624)
  wall843 <- createWall (776,616)
  wall844 <- createWall (776,608)
  wall845 <- createWall (776,600)
  wall846 <- createWall (776,592)
  wall847 <- createWall (776,584)
  wall848 <- createWall (776,576)
  wall849 <- createWall (776,568)
  wall850 <- createWall (776,560)
  wall851 <- createWall (776,552)
  wall852 <- createWall (768,544)
  wall853 <- createWall (760,536)
  wall854 <- createWall (752,536)
  wall855 <- createWall (744,536)
  wall856 <- createWall (736,536)
  wall857 <- createWall (728,536)
  wall858 <- createWall (720,536)
  wall859 <- createWall (712,536)
  wall860 <- createWall (704,536)
  wall861 <- createWall (696,536)
  wall862 <- createWall (688,536)
  wall863 <- createWall (680,536)
  wall864 <- createWall (672,536)
  wall865 <- createWall (664,528)
  wall866 <- createWall (656,520)
  wall867 <- createWall (656,512)
  wall868 <- createWall (664,504)
  wall869 <- createWall (672,496)
  wall870 <- createWall (680,496)
  wall871 <- createWall (688,496)
  wall872 <- createWall (696,496)
  wall873 <- createWall (704,496)
  wall874 <- createWall (712,496)
  wall875 <- createWall (720,496)
  wall876 <- createWall (728,496)
  wall877 <- createWall (736,496)
  wall878 <- createWall (744,496)
  wall879 <- createWall (752,496)
  wall880 <- createWall (760,496)
  wall881 <- createWall (768,488)
  wall882 <- createWall (776,480)
  wall883 <- createWall (776,472)
  wall884 <- createWall (776,464)
  wall885 <- createWall (776,456)
  wall886 <- createWall (776,448)
  wall887 <- createWall (776,440)
  wall888 <- createWall (776,432)
  wall889 <- createWall (776,424)
  wall890 <- createWall (776,416)
  wall891 <- createWall (776,408)
  wall892 <- createWall (776,400)
  wall893 <- createWall (776,392)
  wall894 <- createWall (784,384)
  return $ [ wall81 
           , wall82 
           , wall83 
           , wall84 
           , wall85 
           , wall86 
           , wall87 
           , wall88 
           , wall89 
           , wall810 
           , wall811 
           , wall812 
           , wall813 
           , wall814 
           , wall815 
           , wall816 
           , wall817 
           , wall818 
           , wall819 
           , wall820 
           , wall821 
           , wall822 
           , wall823 
           , wall824 
           , wall825 
           , wall826 
           , wall827 
           , wall828 
           , wall829 
           , wall830 
           , wall831 
           , wall832 
           , wall833 
           , wall834 
           , wall835 
           , wall836 
           , wall837 
           , wall838 
           , wall839 
           , wall840 
           , wall841 
           , wall842 
           , wall843 
           , wall844 
           , wall845 
           , wall846 
           , wall847 
           , wall848 
           , wall849 
           , wall850 
           , wall851 
           , wall852 
           , wall853 
           , wall854 
           , wall855 
           , wall856 
           , wall857 
           , wall858 
           , wall859 
           , wall860 
           , wall861 
           , wall862 
           , wall863 
           , wall864 
           , wall865 
           , wall866 
           , wall867 
           , wall868 
           , wall869 
           , wall870 
           , wall871 
           , wall872 
           , wall873 
           , wall874 
           , wall875 
           , wall876 
           , wall877 
           , wall878 
           , wall879 
           , wall880 
           , wall881 
           , wall882 
           , wall883 
           , wall884 
           , wall885 
           , wall886 
           , wall887 
           , wall888 
           , wall889 
           , wall890 
           , wall891 
           , wall892 
           , wall893 
           , wall894
           ]
  -}

{-------------------------------------------------------------}
