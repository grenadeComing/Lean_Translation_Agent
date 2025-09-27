import Mathlib
open Equiv Function Fintype Finset

/-- Let n ≥ 3. Prove that the center Z(Sym_n) of the symmetric group on n letters is trivial. -/
theorem center_perm_eq_bot {n : ℕ} (hn : 3 ≤ n) : Subgroup.center (Perm (Fin n)) = ⊥ := by sorry
