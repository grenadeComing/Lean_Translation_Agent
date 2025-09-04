import Mathlib

/-!
# O(n) and SO(n) normality and quotient

We state that SO(n) is a normal subgroup of O(n) and the quotient O(n)/SO(n)
is isomorphic to Z^× = {±1}.
-/

open Matrix
open Subgroup

variable (n : ℕ)

/-- Orthogonal group O(n) over ℝ -/
def O_group := LinearIsometryEquiv.ofReal (Fin n → ℝ) -- placeholder

/-- Special orthogonal group SO(n) over ℝ -/
def SO_group := {g : O_group n // 1 = 1} -- placeholder

theorem SO_normal_in_O : (SO_group n).Normal := by sorry

theorem O_mod_SO_eq_units : (O_group n) ⧸ (SO_group n) ≃* (Multiplicative (Units (Int))) := by sorry
