module Application.LoadAssets where

import Data.Massiv.Array as DMA
import Data.Massiv.Array.IO as DMAIO
import qualified Graphics.ColorModel as CM


{-Load border asset.-}

loadBorderAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadBorderAsset = DMAIO.readArray BMP "assets/wall_final_final.bmp" :: IO (DMAIO.Image S CM.RGB Word8)  

{--------------------}

{-Load ghosthouse asset.-}

loadGhostHouseAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadGhostHouseAsset = DMAIO.readArray BMP "assets/wall_final.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{------------------------}

{-Load ghosthousegate asset.-}

loadGhostHouseGateAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadGhostHouseGateAsset = DMAIO.readArray BMP "assets/ghosthousegate.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{----------------------------}

{-Load wall asset.-}

loadWallAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadWallAsset = DMAIO.readArray BMP "assets/wall_final.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{------------------}

{-Load cookie asset.-}

loadCookieAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadCookieAsset = DMAIO.readArray BMP "assets/largeb_cookie.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{--------------------}

{-Load largecookie asset.-}

loadLargeCookieAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadLargeCookieAsset = DMAIO.readArray BMP "assets/largeb_largecookie.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{-------------------------}

{-Load powercookie asset.-}

loadPowerCookieAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadPowerCookieAsset = DMAIO.readArray BMP "assets/largeb_power_cookie.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{-------------------------}

{-Load blinky (left asset).-}

loadBlinkyLeftAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadBlinkyLeftAsset = DMAIO.readArray BMP "assets/largeb_redghost_left.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{---------------------------}

{-Load blinky (left-alt asset).-}

loadBlinkyLeftAltAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadBlinkyLeftAltAsset = DMAIO.readArray BMP "assets/largeb_redghost_left_alt.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{-------------------------------}

{-Load blinky (right asset).-}

loadBlinkyRightAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadBlinkyRightAsset = DMAIO.readArray BMP "assets/largeb_redghost_right.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{-------------------------------}

{-Load blinky (right-alt asset).-}

loadBlinkyRightAltAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadBlinkyRightAltAsset = DMAIO.readArray BMP "assets/largeb_redghost_right_alt.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{--------------------------------}

{-Load blinky (up asset).-}

loadBlinkyUpAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadBlinkyUpAsset = DMAIO.readArray BMP "assets/largeb_redghost_up.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{-------------------------}

{-Load blinky (up-alt asset).-}

loadBlinkyUpAltAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadBlinkyUpAltAsset = DMAIO.readArray BMP "assets/largeb_redghost_up_alt.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{-----------------------------}

{-Load blinky (down asset).-}

loadBlinkyDownAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadBlinkyDownAsset = DMAIO.readArray BMP "assets/largeb_redghost_down.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{---------------------------}

{-Load blinky (down-alt asset).-}

loadBlinkyDownAltAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadBlinkyDownAltAsset = DMAIO.readArray BMP "assets/largeb_redghost_down_alt.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{-------------------------------}

{-Load clyde (up asset).-}

loadClydeUpAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadClydeUpAsset = DMAIO.readArray BMP "assets/largeb_biegeghost_up.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{------------------------}

{-Load clyde (up-alt asset).-}

loadClydeUpAltAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadClydeUpAltAsset = DMAIO.readArray BMP "assets/largeb_biegeghost_up_alt.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{----------------------------}

{-Load clyde (down asset).-}

loadClydeDownAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadClydeDownAsset = DMAIO.readArray BMP "assets/largeb_biegeghost_down.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{--------------------------}

{-Load clyde (down-alt asset).-}

loadClydeDownAltAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadClydeDownAltAsset = DMAIO.readArray BMP "assets/largeb_biegeghost_down_alt.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{------------------------}

{-Load clyde (left asset).-}

loadClydeLeftAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadClydeLeftAsset = DMAIO.readArray BMP "assets/largeb_biegeghost_left.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{--------------------------}

{-Load clyde (left-alt asset).-}

loadClydeLeftAltAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadClydeLeftAltAsset = DMAIO.readArray BMP "assets/largeb_biegeghost_left_alt.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{------------------------------}

{-Load clyde (right asset).-}

loadClydeRightAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadClydeRightAsset = DMAIO.readArray BMP "assets/largeb_biegeghost_right.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{---------------------------}

{-Load clyde (right-alt asset).-}

loadClydeRightAltAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadClydeRightAltAsset = DMAIO.readArray BMP "assets/largeb_biegeghost_right_alt.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{-------------------------------}

{-Load inky (up asset).-}

loadInkyUpAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadInkyUpAsset = DMAIO.readArray BMP "assets/largeb_blueghost_up.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{-----------------------}

{-Load inky (up-alt asset).-}

loadInkyUpAltAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadInkyUpAltAsset = DMAIO.readArray BMP "assets/largeb_blueghost_up_alt.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{---------------------------}

{-Load inky (down asset).-}

loadInkyDownAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadInkyDownAsset = DMAIO.readArray BMP "assets/largeb_blueghost_down.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{-------------------------}

{-Load inky (down-alt asset).-}

loadInkyDownAltAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadInkyDownAltAsset = DMAIO.readArray BMP "assets/largeb_blueghost_down_alt.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{-----------------------------}

{-Load inky (left asset).-}

loadInkyLeftAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadInkyLeftAsset = DMAIO.readArray BMP "assets/largeb_blueghost_left.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{-------------------------}

{-Load inky (left-alt asset).-}

loadInkyLeftAltAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadInkyLeftAltAsset = DMAIO.readArray BMP "assets/largeb_blueghost_left_alt.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{-----------------------------}

{-Load inky (right asset).-}

loadInkyRightAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadInkyRightAsset = DMAIO.readArray BMP "assets/largeb_blueghost_right.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{--------------------------}

{-Load inky (right-alt asset).-}

loadInkyRightAltAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadInkyRightAltAsset = DMAIO.readArray BMP "assets/largeb_blueghost_right_alt.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{------------------------------}

{-Load pinky (down asset).-}

loadPinkyDownAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadPinkyDownAsset = DMAIO.readArray BMP "assets/largeb_pinkghost_down.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{--------------------------}

{-Load pinky (down-alt asset).-}

loadPinkyDownAltAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadPinkyDownAltAsset = DMAIO.readArray BMP "assets/largeb_pinkghost_down_alt.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{------------------------------}

{-Load pinky (up asset).-}

loadPinkyUpAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadPinkyUpAsset = DMAIO.readArray BMP "assets/largeb_pinkghost_up.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{------------------------}

{-Load pinky (up-alt asset).-}

loadPinkyUpAltAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadPinkyUpAltAsset = DMAIO.readArray BMP "assets/largeb_pinkghost_up_alt.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{--------------------------}

{-Load pinky (left asset).-}

loadPinkyLeftAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadPinkyLeftAsset = DMAIO.readArray BMP "assets/largeb_pinkghost_left.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{--------------------------}

{-Load pinky (left-alt asset).-}

loadPinkyLeftAltAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadPinkyLeftAltAsset = DMAIO.readArray BMP "assets/largeb_pinkghost_left_alt.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{------------------------------}

{-Load pinky (right asset).-}

loadPinkyRightAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadPinkyRightAsset = DMAIO.readArray BMP "assets/largeb_pinkghost_right.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{---------------------------}

{-Load pinky (right-alt asset).-}

loadPinkyRightAltAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadPinkyRightAltAsset = DMAIO.readArray BMP "assets/largeb_pinkghost_right_alt.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{-------------------------------}

{-Load pacman (starting asset).-}

loadPacmanStartingAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadPacmanStartingAsset = DMAIO.readArray BMP "assets/largeb_pacman_start.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{-------------------------------}

{-Load pacman (up asset).-}

loadPacmanUpAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadPacmanUpAsset = DMAIO.readArray BMP "assets/largeb_pacman_up.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{-------------------------}

{-Load pacman (up-wide asset).-}

loadPacmanUpWideAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadPacmanUpWideAsset = DMAIO.readArray BMP "assets/largeb_pacman_up_wide.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{------------------------------}

{-Load pacman (down asset).-}

loadPacmanDownAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadPacmanDownAsset = DMAIO.readArray BMP "assets/largeb_pacman_down.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{---------------------------}

{-Load pacman (down-wide asset).-}

loadPacmanDownWideAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadPacmanDownWideAsset = DMAIO.readArray BMP "assets/largeb_pacman_down_wide.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{--------------------------------}

{-Load pacman (left asset).-}

loadPacmanLeftAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadPacmanLeftAsset = DMAIO.readArray BMP "assets/largeb_pacman_left.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{---------------------------}

{-Load pacman (left-alt asset).-}

loadPacmanLeftAltAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadPacmanLeftAltAsset = DMAIO.readArray BMP "assets/largeb_pacman_left_wide.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{-------------------------------}

{-Load pacman (right asset).-}

loadPacmanRightAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadPacmanRightAsset = DMAIO.readArray BMP "assets/largeb_pacman_right.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{----------------------------}

{-Load pacman (right-wide asset).-}

loadPacmanRightWideAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadPacmanRightWideAsset = DMAIO.readArray BMP "assets/largeb_pacman_right_wide.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{---------------------------------}

{-Load scaredghost asset.-}

loadScaredGhostAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadScaredGhostAsset = DMAIO.readArray BMP "assets/largeb_scaredghost.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{-------------------------}

{-Load scaredghost (alt asset).-}

loadScaredGhostAltAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadScaredGhostAltAsset = DMAIO.readArray BMP "assets/largeb_scaredghost_alt.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{-------------------------------}

{-Load whiteghost asset.-}

loadWhiteGhostAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadWhiteGhostAsset = DMAIO.readArray BMP "assets/largeb_whiteghost.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{------------------------}

{-Load whiteghost (alt asset).-}

loadWhiteGhostAltAsset :: IO (DMAIO.Image S CM.RGB Word8)
loadWhiteGhostAltAsset = DMAIO.readArray BMP "assets/largeb_whiteghost_alt.bmp" :: IO (DMAIO.Image S CM.RGB Word8)

{-------------------------------}
