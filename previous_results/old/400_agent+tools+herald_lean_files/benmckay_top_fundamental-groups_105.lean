import Mathlib

universe u

theorem fundamental_group_conjugation_isomorphism {X : Type u} [TopologicalSpace X]
  {x0 x1 : X} (p : Path x0 x1) :
  MulEquiv (FundamentalGroup X x0) (FundamentalGroup X x1) := by sorry
