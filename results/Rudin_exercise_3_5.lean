import Mathlib

open Filter

/-
Exercise: For any two real sequences {a_n},{b_n},
show limsup_{n→∞} (a_n + b_n) ≤ limsup_{n→∞} a_n + limsup_{n→∞} b_n,
provided the sum on the right is not of the form ∞ - ∞.

We state the inequality using EReal (the extended real numbers) by
coercing real sequences into EReal.
-/

theorem Rudin_exercise_3_5 (a b : ℕ → ℝ)
  (h : ¬ (Filter.limsup (fun n => Real.toEReal (a n)) atTop = (⊤ : EReal) ∧
          Filter.limsup (fun n => Real.toEReal (b n)) atTop = - (⊤ : EReal))) :
  Filter.limsup (fun n => Real.toEReal (a n + b n)) atTop ≤
    Filter.limsup (fun n => Real.toEReal (a n)) atTop + Filter.limsup (fun n => Real.toEReal (b n)) atTop :=
by sorry
