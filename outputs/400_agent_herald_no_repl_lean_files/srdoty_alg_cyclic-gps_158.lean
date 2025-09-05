import Mathlib

/-- Any infinite cyclic additive group is isomorphic (as an additive group) to ℤ. -/
theorem cyclic_add_group_isomorphic_int_of_infinite (G : Type*) [AddGroup G] (h : IsCyclic G)
  (hinf : ¬ Nonempty (Fintype G)) : Nonempty (G ≃+ Int) := by sorry

/-- Any finite cyclic additive group is isomorphic (as an additive group) to ZMod n for some n > 0. -/
theorem cyclic_add_group_isomorphic_zmod_of_finite (G : Type*) [AddGroup G] (h : IsCyclic G)
  (hf : Nonempty (Fintype G)) : ∃ n : ℕ, 0 < n ∧ Nonempty (G ≃+ ZMod n) := by sorry