import Mathlib

/-- Let n be a fixed positive integer and let a, b, c be integers.
    If a ≡ b (mod n) and b ≡ c (mod n), then a ≡ c (mod n). -/
theorem modeq_trans {n : Int} (hn : 0 < n) (a b c : Int) (hab : Int.ModEq n a b) (hbc : Int.ModEq n b c) : Int.ModEq n a c := by sorry
