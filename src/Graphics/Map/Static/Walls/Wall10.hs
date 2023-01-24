module Graphics.Map.Static.Walls.Wall10 where


import Graphics.Map.Static.Walls.Common

import Graphics.Gloss.Data.Picture


{-Define the Picture that makes up the tenth wall of the map.-}

wall10 :: IO Picture
wall10 = do
  wall101 <- createWall (312,736)
  wall102 <- createWall (320,736)
  wall103 <- createWall (328,744)
  wall104 <- createWall (336,752)
  wall105 <- createWall (336,760)
  wall106 <- createWall (336,768)
  wall107 <- createWall (336,776)
  wall108 <- createWall (336,784)
  wall109 <- createWall (336,792)
  wall1010 <- createWall (336,800)
  wall1011 <- createWall (336,808)
  wall1012 <- createWall (336,816)
  wall1013 <- createWall (336,824)
  wall1014 <- createWall (336,832)
  wall1015 <- createWall (336,840)
  wall1016 <- createWall (336,848)
  wall1017 <- createWall (336,856)
  wall1018 <- createWall (336,864)
  wall1019 <- createWall (336,872)
  wall1020 <- createWall (336,880)
  wall1021 <- createWall (328,888)
  wall1022 <- createWall (320,896)
  wall1023 <- createWall (312,896)
  wall1024 <- createWall (304,888)
  wall1025 <- createWall (296,880)
  wall1026 <- createWall (296,872)
  wall1027 <- createWall (296,864)
  wall1028 <- createWall (296,856)
  wall1029 <- createWall (296,848)
  wall1030 <- createWall (296,840)
  wall1031 <- createWall (296,832)
  wall1032 <- createWall (296,824)
  wall1033 <- createWall (296,816)
  wall1034 <- createWall (296,808)
  wall1035 <- createWall (296,800)
  wall1036 <- createWall (296,792)
  wall1037 <- createWall (296,784)
  wall1038 <- createWall (296,776)
  wall1039 <- createWall (296,768)
  wall1040 <- createWall (296,760)
  wall1041 <- createWall (296,752)
  wall1042 <- createWall (304,744)
  return $ Pictures [ wall101 
                    , wall102 
                    , wall103 
                    , wall104 
                    , wall105 
                    , wall106 
                    , wall107 
                    , wall108 
                    , wall109 
                    , wall1010 
                    , wall1011 
                    , wall1012 
                    , wall1013 
                    , wall1014 
                    , wall1015 
                    , wall1016 
                    , wall1017 
                    , wall1018 
                    , wall1019 
                    , wall1020 
                    , wall1021 
                    , wall1022 
                    , wall1023 
                    , wall1024 
                    , wall1025 
                    , wall1026 
                    , wall1027 
                    , wall1028 
                    , wall1029 
                    , wall1030 
                    , wall1031 
                    , wall1032 
                    , wall1033 
                    , wall1034 
                    , wall1035 
                    , wall1036 
                    , wall1037 
                    , wall1038 
                    , wall1039 
                    , wall1040 
                    , wall1041 
                    , wall1042
                    ]

{-------------------------------------------------------------}
