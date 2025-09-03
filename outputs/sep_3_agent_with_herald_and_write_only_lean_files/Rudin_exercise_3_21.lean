import Mathlib

/-
Rudin, Principles of Mathematical Analysis, Exercise 3.21 (translation to Lean4)
If {E_n} is a sequence of closed nonempty and bounded sets in a complete metric space X,
if E_n ⊇ E_{n+1}, and if diam E_n → 0, then ⋂_{n=1}^∞ E_n consists of exactly one point.

This file states the theorem. The proof is omitted (``by sorry'').
-/

theorem Rudin_exercise_3_21 {X : Type _} [MetricSpace X] [CompleteSpace X] (E : ℕ → Set X)
  (h_closed : ∀ n, IsClosed (E n))
  (h_nonempty : ∀ n, (E n).Nonempty)
  (h_bdd : ∀ n, Bounded (E n))
  (h_mono : ∀ n, E n ⊇ E (n+1))
  -- instead of using `diam` we express the diameter condition directly:
  (h_diam : ∀ ε > 0, ∃ N, ∀ n, n ≥ N → ∀ x y, x ∈ E n → y ∈ E n → dist x y < ε) :
  ∃! x, x ∈ ⋂ n, E n := by sorry
