import Mathlib

open FundamentalGroupoid

theorem benmckay_top_fundamental_groups_105 (X : Type*) [TopologicalSpace X]
  [Category (FundamentalGroupoid X)] {x0 x1 : X} (p : Path x0 x1) :
  MulEquiv (CategoryTheory.Aut (FundamentalGroupoid X) (FundamentalGroupoid.mk x0))
          (CategoryTheory.Aut (FundamentalGroupoid X) (FundamentalGroupoid.mk x1)) := by sorry
