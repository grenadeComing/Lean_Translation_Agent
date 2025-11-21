import Mathlib

/-!
Basic properties of congruence modulo n for integers.
We express `a ≡ b (mod n)` as `n ∣ (a - b)`.
-/-

/-- Reflexivity: a ≡ a (mod n). -/
theorem congr_mod_refl {n : Int} (hn : 0 < n) (a : Int) : n ∣ (a - a) := by sorry

/-- Symmetry: if a ≡ b (mod n) then b ≡ a (mod n). -/
theorem congr_mod_symm {n : Int} (hn : 0 < n) {a b : Int} (h : n ∣ (a - b)) : n ∣ (b - a) := by sorry

/-- Transitivity: if a ≡ b (mod n) and b ≡ c (mod n) then a ≡ c (mod n). -/
theorem congr_mod_trans {n : Int} (hn : 0 < n) {a b c : Int} (hab : n ∣ (a - b)) (hbc : n ∣ (b - c)) : n ∣ (a - c) := by sorry
