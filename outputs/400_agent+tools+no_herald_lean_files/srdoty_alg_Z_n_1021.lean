import Mathlib

/--
Let n>1 be an integer. The linear congruence a x ≡ b (mod n) has a solution in Z_n
whenever the class [a] ∈ Z_n is a unit.
-/
theorem srdoty_alg_Z_n_1021 {n : ℕ} (hn : 1 < n) {a b : ZMod n} (ha : IsUnit a) :
  ∃ x : ZMod n, a * x = b := by sorry
