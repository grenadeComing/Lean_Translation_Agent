import Mathlib

/-- Let n ≥ 3. Prove that the center Z(Sym_n) of the symmetric group on n letters is trivial. -/
theorem center_perm_eq_bot_of_card_ge_three {α : Type*} [Fintype α]
  (h : 3 ≤ Fintype.card α) : Subgroup.center (Equiv.Perm α) = ⊥ := by
  -- proof omitted
  sorry
