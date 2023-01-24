module Graphics.Map.Static.Walls.Wall11 where


import Graphics.Map.Static.Walls.Common

import Graphics.Gloss.Data.Picture


{-Define the Picture that makes up the eleventh wall of the map.-}

wall11 :: IO Picture
wall11 = do
  wall111 <- createWall (792,736)
  wall112 <- createWall (800,736)
  wall113 <- createWall (808,744)
  wall114 <- createWall (816,752)
  wall115 <- createWall (816,760)
  wall116 <- createWall (816,768)
  wall117 <- createWall (816,776)
  wall118 <- createWall (816,784)
  wall119 <- createWall (816,792)
  wall1110 <- createWall (816,800)
  wall1111 <- createWall (816,808)
  wall1112 <- createWall (816,816)
  wall1113 <- createWall (816,824)
  wall1114 <- createWall (816,832)
  wall1115 <- createWall (816,840)
  wall1116 <- createWall (816,848)
  wall1117 <- createWall (816,856)
  wall1118 <- createWall (816,864)
  wall1119 <- createWall (816,872)
  wall1120 <- createWall (816,880)
  wall1121 <- createWall (808,888)
  wall1122 <- createWall (800,896)
  wall1123 <- createWall (792,896)
  wall1124 <- createWall (784,888)
  wall1125 <- createWall (776,880)
  wall1126 <- createWall (776,872)
  wall1127 <- createWall (776,864)
  wall1128 <- createWall (776,856)
  wall1129 <- createWall (776,848)
  wall1130 <- createWall (776,840)
  wall1131 <- createWall (776,832)
  wall1132 <- createWall (776,824)
  wall1133 <- createWall (776,816)
  wall1134 <- createWall (776,808)
  wall1135 <- createWall (776,800)
  wall1136 <- createWall (776,792)
  wall1137 <- createWall (776,784)
  wall1138 <- createWall (776,776)
  wall1139 <- createWall (776,768)
  wall1140 <- createWall (776,760)
  wall1141 <- createWall (776,752)
  wall1142 <- createWall (784,744)
  return $ Pictures [ wall111 
                    , wall112 
                    , wall113 
                    , wall114 
                    , wall115 
                    , wall116 
                    , wall117 
                    , wall118 
                    , wall119 
                    , wall1110 
                    , wall1111 
                    , wall1112 
                    , wall1113 
                    , wall1114 
                    , wall1115 
                    , wall1116 
                    , wall1117 
                    , wall1118 
                    , wall1119 
                    , wall1120 
                    , wall1121 
                    , wall1122 
                    , wall1123 
                    , wall1124 
                    , wall1125 
                    , wall1126 
                    , wall1127 
                    , wall1128 
                    , wall1129 
                    , wall1130 
                    , wall1131 
                    , wall1132 
                    , wall1133 
                    , wall1134 
                    , wall1135 
                    , wall1136 
                    , wall1137 
                    , wall1138 
                    , wall1139 
                    , wall1140 
                    , wall1141 
                    , wall1142
                    ]

{----------------------------------------------------------------}
