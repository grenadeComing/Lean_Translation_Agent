import Mathlib

/-- Exercise (Shakarchi 3.4): For a > 0, show that
    ∫_{-∞}^{∞} x sin x / (x^2 + a^2) dx = π e^{-a}.

We only state the result here; the proof is omitted. -/
theorem Shakarchi_exercise_3_4 (a : ℝ) (ha : 0 < a) :
  ∫ x : ℝ, (x * Real.sin x) / (x^2 + a^2) = Real.pi * Real.exp (-a) := by sorry
