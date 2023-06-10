module Main (main) where

import Test.Hspec
import Test.QuickCheck
import Test.SP.Eval

main :: IO ()
main = hspec $ do
  describe "eval LSP" $ do
    it "test :>>> " $ do
      property $ \x -> prop_TestEnv x
    it "test :+++ " $ do
      property $ \x -> prop_fun1 x
