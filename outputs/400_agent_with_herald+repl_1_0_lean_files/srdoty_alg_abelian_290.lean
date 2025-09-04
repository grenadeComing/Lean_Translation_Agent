import Mathlib

/-- Any finite abelian group is isomorphic to a finite direct product of cyclic groups (ZMod n). -/
theorem finite_abelian_group_is_direct_product_of_cyclic (G : Type*) [AddCommGroup G] [Fintype G] :
  ∃ (m : ℕ) (f : Fin m → ℕ), (∀ i, 0 < f i) ∧ Nonempty (G ≃+ ∀ i, ZMod (f i)) := by
  sorry
