import Mathlib

open Filter

theorem Rudin_exercise_3_5 (a b : ℕ → ℝ)
  (h : ¬ (Filter.limsup (fun n => (a n : EReal)) Filter.atTop = ⊤ ∧
         Filter.limsup (fun n => (b n : EReal)) Filter.atTop = ⊥)) :
  Filter.limsup (fun n => (a n + b n : EReal)) Filter.atTop ≤
    Filter.limsup (fun n => (a n : EReal)) Filter.atTop +
    Filter.limsup (fun n => (b n : EReal)) Filter.atTop := by
  sorry