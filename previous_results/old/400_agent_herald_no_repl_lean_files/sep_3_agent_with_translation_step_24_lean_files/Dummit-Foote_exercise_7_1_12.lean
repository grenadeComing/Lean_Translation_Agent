import Mathlib

/-- Any subring S of a field K which contains 1 is an integral domain. -/
theorem subring_of_field_is_domain {K : Type _} [Field K] (S : Subring K) (h1 : (1 : K) ∈ S) : IsDomain (↥S) := by sorry
