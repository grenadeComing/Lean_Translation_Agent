import Mathlib

/-- Let n be a fixed positive integer and let a,b,c,d ∈ ℤ. Suppose that a ≡ b (mod n) and c ≡ d (mod n).
    Then ac ≡ bd (mod n). We state this using divisibility: n ∣ a - b and n ∣ c - d imply n ∣ a * c - b * d. -/
theorem int_mul_congr_of_sub_dvd {n a b c d : Int} (hn : 0 < n) (h1 : n ∣ a - b) (h2 : n ∣ c - d) :
  n ∣ a * c - b * d := by sorry