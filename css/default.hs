{-# LANGUAGE OverloadedStrings #-}
import Clay
import qualified Clay.Text as CT (pre)
import Prelude hiding (div)

main :: IO ()
main = putCss defaultCss

defaultCss :: Css
defaultCss = do
  body ? do
    color       black
    fontSize    (px 18)
    sym2 margin (px 0) auto
    width       (px 700)

  div # "#header" ? do
    borderBottom solid (px 2) black
    marginBottom (px 30)
    sym2 padding (px 12) (px 0)

  div # "#navigation" ? do
    textAlign (alignSide sideRight)
    a ? do
      color           black
      fontSize        (px 20)
      fontWeight      bold
      marginLeft      (px 12)
      textDecoration  none
      textTransform   uppercase

  div # "#logo" ? do
    a ? do
      color           black
      float           floatLeft
      fontSize        (px 20)
      fontWeight      bold
      textDecoration  none

  div # "#footer" ? do
    borderTop solid (px 2) black
    color     "#555"
    fontSize  (px 12)
    marginTop (px 30)
    sym2      padding (px 12) (px 0)
    textAlign (alignSide sideRight)

  div # ".info" ? do
    color     "#555"
    fontSize  (px 14)
    fontStyle italic

  h1 ? do fontSize (px 28)

  h2 ? do fontSize (px 24)

  code ? do
    backgroundColor   "#f9f9f9"
    border            solid (px 1) "#cccccc"
    sym borderRadius  (px 3)
    display           inlineBlock
    fontSize          (px 16)
    sym2 padding      (px 1) (px 3)
    whiteSpace        CT.pre

  pre ? do
    code <? do
      display  block
      overflow auto
      width    (pct 100)
