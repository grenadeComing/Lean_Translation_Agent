import Mathlib

noncomputable section

/-- Pugh exercise 3.63(b): For p ≤ 1 the series ∑_{k=2}^∞ 1/(k (log k)^p) diverges.
We define a_n = 0 for n ≤ 1 and a_n = 1/(n * (log n)^p) for n ≥ 2, and state ¬ Summable a. -/

def Pugh_a (p : ℝ) : ℕ → ℝ := fun n => if n ≤ 1 then 0 else 1 / (n * Real.rpow (Real.log n) p)

theorem Pugh_exercise_3_63b (p : ℝ) (hp : p ≤ 1) : ¬ Summable (Pugh_a p) := by sorry

end noncomputable section
