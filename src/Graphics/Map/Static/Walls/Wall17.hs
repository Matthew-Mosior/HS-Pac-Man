module Graphics.Map.Static.Walls.Wall17 where


import Graphics.Map.Static.Walls.Common

import Data.Massiv.Array
import Data.Sequence as DSeq
import Graphics.Gloss.Raster.Massiv.Internal


{-Define the Picture that makes up the seveteenth wall of the map.-}

wall17 :: IO (Seq (Array S Ix2 ColorMassiv,(Int,Int)))
wall17 = do
  return DSeq.empty
  {-
  wall171 <- createWall (112,1216)
  wall172 <- createWall (120,1216)
  wall173 <- createWall (128,1216)
  wall174 <- createWall (136,1216)
  wall175 <- createWall (144,1216)
  wall176 <- createWall (152,1216)
  wall177 <- createWall (160,1216)
  wall178 <- createWall (168,1216)
  wall179 <- createWall (176,1216)
  wall1710 <- createWall (184,1216)
  wall1711 <- createWall (192,1216)
  wall1712 <- createWall (200,1216)
  wall1713 <- createWall (208,1216)
  wall1714 <- createWall (216,1216)
  wall1715 <- createWall (224,1216)
  wall1716 <- createWall (232,1216)
  wall1717 <- createWall (240,1216)
  wall1718 <- createWall (248,1216)
  wall1719 <- createWall (256,1216)
  wall1720 <- createWall (264,1216)
  wall1721 <- createWall (272,1216)
  wall1722 <- createWall (280,1216)
  wall1723 <- createWall (288,1208)
  wall1724 <- createWall (296,1200)
  wall1725 <- createWall (296,1192)
  wall1726 <- createWall (296,1184)
  wall1727 <- createWall (296,1176)
  wall1728 <- createWall (296,1168)
  wall1729 <- createWall (296,1160)
  wall1730 <- createWall (296,1152)
  wall1731 <- createWall (296,1144)
  wall1732 <- createWall (296,1136)
  wall1733 <- createWall (296,1128)
  wall1734 <- createWall (296,1120)
  wall1735 <- createWall (296,1112)
  wall1736 <- createWall (304,1104)
  wall1737 <- createWall (312,1096)
  wall1738 <- createWall (320,1096)
  wall1739 <- createWall (328,1104)
  wall1740 <- createWall (336,1112)
  wall1741 <- createWall (336,1120)
  wall1742 <- createWall (336,1128)
  wall1743 <- createWall (336,1136)
  wall1744 <- createWall (336,1144)
  wall1745 <- createWall (336,1152)
  wall1746 <- createWall (336,1160)
  wall1747 <- createWall (336,1168)
  wall1748 <- createWall (336,1176)
  wall1749 <- createWall (336,1184)
  wall1750 <- createWall (336,1192)
  wall1751 <- createWall (336,1200)
  wall1752 <- createWall (344,1208)
  wall1753 <- createWall (352,1216)
  wall1754 <- createWall (360,1216)
  wall1755 <- createWall (368,1216)
  wall1756 <- createWall (376,1216)
  wall1757 <- createWall (384,1216)
  wall1758 <- createWall (392,1216)
  wall1759 <- createWall (400,1216)
  wall1760 <- createWall (408,1216)
  wall1761 <- createWall (416,1216)
  wall1762 <- createWall (424,1216)
  wall1763 <- createWall (432,1216)
  wall1764 <- createWall (440,1216)
  wall1765 <- createWall (448,1224)
  wall1766 <- createWall (456,1232)
  wall1767 <- createWall (456,1240)
  wall1768 <- createWall (448,1248)
  wall1769 <- createWall (440,1256)
  wall1770 <- createWall (432,1256)
  wall1771 <- createWall (424,1256)
  wall1772 <- createWall (416,1256)
  wall1773 <- createWall (408,1256)
  wall1774 <- createWall (400,1256)
  wall1775 <- createWall (392,1256)
  wall1776 <- createWall (384,1256)
  wall1777 <- createWall (376,1256)
  wall1778 <- createWall (368,1256)
  wall1779 <- createWall (360,1256)
  wall1780 <- createWall (352,1256)
  wall1781 <- createWall (344,1256)
  wall1782 <- createWall (336,1256)
  wall1783 <- createWall (328,1256)
  wall1784 <- createWall (320,1256)
  wall1785 <- createWall (312,1256)
  wall1786 <- createWall (304,1256)
  wall1787 <- createWall (296,1256)
  wall1788 <- createWall (288,1256)
  wall1789 <- createWall (280,1256)
  wall1790 <- createWall (272,1256)
  wall1791 <- createWall (264,1256)
  wall1792 <- createWall (256,1256)
  wall1793 <- createWall (248,1256)
  wall1794 <- createWall (240,1256)
  wall1795 <- createWall (232,1256)
  wall1796 <- createWall (224,1256)
  wall1797 <- createWall (216,1256)
  wall1798 <- createWall (208,1256)
  wall1799 <- createWall (200,1256)
  wall17100 <- createWall (192,1256)
  wall17101 <- createWall (184,1256)
  wall17102 <- createWall (176,1256)
  wall17103 <- createWall (168,1256)
  wall17104 <- createWall (160,1256)
  wall17105 <- createWall (152,1256)
  wall17106 <- createWall (144,1256)
  wall17107 <- createWall (136,1256)
  wall17108 <- createWall (128,1256)
  wall17109 <- createWall (120,1256)
  wall17110 <- createWall (112,1256)
  wall17111 <- createWall (104,1248)
  wall17112 <- createWall (96,1240)
  wall17113 <- createWall (96,1232)
  wall17114 <- createWall (104,1224)
  return $ [ wall171 
           , wall172 
           , wall173 
           , wall174 
           , wall175 
           , wall176 
           , wall177 
           , wall178 
           , wall179 
           , wall1710 
           , wall1711 
           , wall1712 
           , wall1713 
           , wall1714 
           , wall1715 
           , wall1716 
           , wall1717 
           , wall1718 
           , wall1719 
           , wall1720 
           , wall1721 
           , wall1722 
           , wall1723 
           , wall1724 
           , wall1725 
           , wall1726 
           , wall1727 
           , wall1728 
           , wall1729 
           , wall1730 
           , wall1731 
           , wall1732 
           , wall1733 
           , wall1734 
           , wall1735 
           , wall1736 
           , wall1737 
           , wall1738 
           , wall1739 
           , wall1740 
           , wall1741 
           , wall1742 
           , wall1743 
           , wall1744 
           , wall1745 
           , wall1746 
           , wall1747 
           , wall1748 
           , wall1749 
           , wall1750 
           , wall1751 
           , wall1752 
           , wall1753 
           , wall1754 
           , wall1755 
           , wall1756 
           , wall1757 
           , wall1758 
           , wall1759 
           , wall1760 
           , wall1761 
           , wall1762 
           , wall1763 
           , wall1764 
           , wall1765 
           , wall1766 
           , wall1767 
           , wall1768 
           , wall1769 
           , wall1770 
           , wall1771 
           , wall1772 
           , wall1773 
           , wall1774 
           , wall1775 
           , wall1776 
           , wall1777 
           , wall1778 
           , wall1779 
           , wall1780 
           , wall1781 
           , wall1782 
           , wall1783 
           , wall1784 
           , wall1785 
           , wall1786 
           , wall1787 
           , wall1788 
           , wall1789 
           , wall1790 
           , wall1791 
           , wall1792 
           , wall1793 
           , wall1794 
           , wall1795 
           , wall1796 
           , wall1797 
           , wall1798 
           , wall1799 
           , wall17100 
           , wall17101 
           , wall17102 
           , wall17103 
           , wall17104 
           , wall17105 
           , wall17106 
           , wall17107 
           , wall17108 
           , wall17109 
           , wall17110 
           , wall17111 
           , wall17112 
           , wall17113 
           , wall17114
           ]
  -}

{------------------------------------------------------------------}
