module Graphics.Map.Static.Walls.Wall6 where


import Graphics.Map.Static.Walls.Common

import Graphics.Gloss.Data.Picture


{-Define the Picture that makes up the sixth wall of the map.-}

wall6 :: IO Picture
wall6 = do
  wall61 <- createWall (312,376)
  wall62 <- createWall (320,376)
  wall63 <- createWall (328,384)
  wall64 <- createWall (336,392)
  wall65 <- createWall (336,400)
  wall66 <- createWall (336,408)
  wall67 <- createWall (336,416)
  wall68 <- createWall (336,424)
  wall69 <- createWall (336,432)
  wall610 <- createWall (336,440)
  wall611 <- createWall (336,448)
  wall612 <- createWall (336,456)
  wall613 <- createWall (336,464)
  wall614 <- createWall (336,472)
  wall615 <- createWall (336,480)
  wall616 <- createWall (344,488)
  wall617 <- createWall (352,496)
  wall618 <- createWall (360,496)
  wall619 <- createWall (368,496)
  wall620 <- createWall (376,496)
  wall621 <- createWall (384,496)
  wall622 <- createWall (392,496)
  wall623 <- createWall (400,496)
  wall624 <- createWall (408,496)
  wall625 <- createWall (416,496)
  wall626 <- createWall (424,496)
  wall627 <- createWall (432,496)
  wall628 <- createWall (440,496)
  wall629 <- createWall (448,504)
  wall630 <- createWall (456,512)
  wall631 <- createWall (456,520)
  wall632 <- createWall (448,528)
  wall633 <- createWall (440,536)
  wall634 <- createWall (432,536)
  wall635 <- createWall (424,536)
  wall636 <- createWall (416,536)
  wall637 <- createWall (408,536)
  wall638 <- createWall (400,536)
  wall639 <- createWall (392,536)
  wall640 <- createWall (384,536)
  wall641 <- createWall (376,536)
  wall642 <- createWall (368,536)
  wall643 <- createWall (360,536)
  wall644 <- createWall (352,536)
  wall645 <- createWall (344,544)
  wall646 <- createWall (336,552)
  wall647 <- createWall (336,560)
  wall648 <- createWall (336,568)
  wall649 <- createWall (336,576)
  wall650 <- createWall (336,584)
  wall651 <- createWall (336,592)
  wall652 <- createWall (336,600)
  wall653 <- createWall (336,608)
  wall654 <- createWall (336,616)
  wall655 <- createWall (336,624)
  wall656 <- createWall (336,632)
  wall657 <- createWall (336,640)
  wall658 <- createWall (328,648)
  wall659 <- createWall (320,656)
  wall660 <- createWall (312,656)
  wall661 <- createWall (304,648)
  wall662 <- createWall (296,640)
  wall663 <- createWall (296,632)
  wall664 <- createWall (296,624)
  wall665 <- createWall (296,616)
  wall666 <- createWall (296,608)
  wall667 <- createWall (296,600)
  wall668 <- createWall (296,592)
  wall669 <- createWall (296,584)
  wall670 <- createWall (296,576)
  wall671 <- createWall (296,568)
  wall672 <- createWall (296,560)
  wall673 <- createWall (296,552)
  wall674 <- createWall (296,544)
  wall675 <- createWall (296,536)
  wall676 <- createWall (296,528)
  wall677 <- createWall (296,520)
  wall678 <- createWall (296,512)
  wall679 <- createWall (296,504)
  wall680 <- createWall (296,496)
  wall681 <- createWall (296,488)
  wall682 <- createWall (296,480)
  wall683 <- createWall (296,472)
  wall684 <- createWall (296,464)
  wall685 <- createWall (296,456)
  wall686 <- createWall (296,448)
  wall687 <- createWall (296,440)
  wall688 <- createWall (296,432)
  wall689 <- createWall (296,424)
  wall690 <- createWall (296,416)
  wall691 <- createWall (296,408)
  wall692 <- createWall (296,400)
  wall693 <- createWall (296,392)
  wall694 <- createWall (304,384)
  return $ Pictures [ wall61 
                    , wall62 
                    , wall63 
                    , wall64 
                    , wall65 
                    , wall66 
                    , wall67 
                    , wall68 
                    , wall69 
                    , wall610 
                    , wall611 
                    , wall612 
                    , wall613 
                    , wall614 
                    , wall615 
                    , wall616 
                    , wall617 
                    , wall618 
                    , wall619 
                    , wall620 
                    , wall621 
                    , wall622 
                    , wall623 
                    , wall624 
                    , wall625 
                    , wall626 
                    , wall627 
                    , wall628 
                    , wall629 
                    , wall630 
                    , wall631 
                    , wall632 
                    , wall633 
                    , wall634 
                    , wall635 
                    , wall636 
                    , wall637 
                    , wall638 
                    , wall639 
                    , wall640 
                    , wall641 
                    , wall642 
                    , wall643 
                    , wall644 
                    , wall645 
                    , wall646 
                    , wall647 
                    , wall648 
                    , wall649 
                    , wall650 
                    , wall651 
                    , wall652 
                    , wall653 
                    , wall654 
                    , wall655 
                    , wall656 
                    , wall657 
                    , wall658 
                    , wall659 
                    , wall660 
                    , wall661 
                    , wall662 
                    , wall663 
                    , wall664 
                    , wall665 
                    , wall666 
                    , wall667 
                    , wall668 
                    , wall669 
                    , wall670 
                    , wall671 
                    , wall672 
                    , wall673 
                    , wall674 
                    , wall675 
                    , wall676 
                    , wall677 
                    , wall678 
                    , wall679 
                    , wall680 
                    , wall681 
                    , wall682 
                    , wall683 
                    , wall684 
                    , wall685 
                    , wall686 
                    , wall687 
                    , wall688 
                    , wall689 
                    , wall690 
                    , wall691 
                    , wall692 
                    , wall693 
                    , wall694
                    ]

{-------------------------------------------------------------}
