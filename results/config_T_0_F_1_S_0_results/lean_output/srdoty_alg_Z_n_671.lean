import Mathlib

/-!
Let n be a fixed positive integer and let a,b,c,d ∈ ℤ.
Suppose that a ≡ b (mod n) and c ≡ d (mod n).
Show that a + c ≡ b + d (mod n).
-/

theorem add_congr_mod {n : ℕ} (a b c d : Int)
  (h1 : (↑n : Int) ∣ (a - b)) (h2 : (↑n : Int) ∣ (c - d)) :
  (↑n : Int) ∣ (a + c - (b + d)) := by sorry
