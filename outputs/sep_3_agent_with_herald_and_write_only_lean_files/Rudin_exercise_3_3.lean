import Mathlib

noncomputable section

open Filter

/-- Sequence defined by s₁ = √2 and s_{n+1} = √(2 + √(s_n)) for n ≥ 1. -/
def s : ℕ → ℝ
| 0       => Real.sqrt 2
| 1       => Real.sqrt 2
| (n + 2) => Real.sqrt (2 + Real.sqrt (s (n + 1)))

/-- Rudin exercise: the sequence (s_n) converges and is bounded above by 2. -/
theorem Rudin_exercise_3_3 : ∃ l : ℝ, Tendsto (fun n => s n) atTop (𝓝 l) ∧ ∀ n : ℕ, s n < 2 := by sorry

end noncomputable section