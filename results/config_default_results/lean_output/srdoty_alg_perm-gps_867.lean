import Mathlib
open Equiv Function

/-- Let n≥1 and let S_n be the symmetric group on {1,...,n}. For any α,β∈ S_n, prove that sgn(αβ) = sgn(α) sgn(β). -/
theorem sign_trans {n : ℕ} (h : 0 < n) (α β : Perm (Fin n)) :
  Perm.sign (α.trans β) = Perm.sign α * Perm.sign β := by sorry
