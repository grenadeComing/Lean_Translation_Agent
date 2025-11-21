import Mathlib

/-- Let p be a prime. The composition factors of any finite abelian p-group
are all isomorphic to ZMod p. -/
theorem composition_factors_of_finite_abelian_p_group_are_zmod_p
  {p : ℕ} [Fact (Nat.Prime p)]
  {G : Type _} [AddCommGroup G] [Fintype G]
  (h_pgroup : ∃ n : ℕ, Fintype.card G = p ^ n) :
  ∀ (s : CompositionSeries G), ∀ i, (s.factors i) ≃+ (ZMod p) := by sorry
