import Mathlib

/-- If a ≡ b (mod n) and c ≡ d (mod n), then a + c ≡ b + d (mod n).
    We state congruence as divisibility: n ∣ (a - b) and n ∣ (c - d) imply n ∣ (a + c - (b + d)). -/
lemma add_mod_congr {n a b c d : Int} (h1 : n ∣ (a - b)) (h2 : n ∣ (c - d)) : n ∣ (a + c - (b + d)) := by sorry
