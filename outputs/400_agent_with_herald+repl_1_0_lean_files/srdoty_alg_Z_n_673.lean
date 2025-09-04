import Mathlib

/-- Let n be a fixed positive integer and a,b,c,d be integers. If n divides a-b and n divides c-d,
then n divides ac - bd. -/
theorem int_modeq_mul {n : Int} (hn : 0 < n) {a b c d : Int}
  (hab : n ∣ a - b) (hcd : n ∣ c - d) : n ∣ a * c - b * d := by
  sorry
