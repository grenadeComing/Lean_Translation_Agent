import Mathlib

/-- Any subring of a field which contains the identity is an integral domain. -/
theorem subring_of_field_is_integral_domain {K : Type _} [Field K] (S : Subring K)
  (h : (1 : K) ∈ S) : IsDomain S := by
  -- proof omitted
  sorry
