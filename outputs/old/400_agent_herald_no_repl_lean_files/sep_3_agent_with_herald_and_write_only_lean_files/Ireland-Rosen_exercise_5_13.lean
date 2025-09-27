import Mathlib

/-- If a prime p divides x^4 - x^2 + 1 then p ≡ 1 (mod 12). -/
theorem Ireland_Rosen_exercise_5_13 {p : ℕ} {x : ℤ} (hp : p.Prime) (h : (p : ℤ) ∣ (x ^ 4 - x ^ 2 + 1)) : p % 12 = 1 := by sorry
