import Mathlib

open Equiv

theorem absolute_summable_rearrangement {E : Type*} [NormedAddCommGroup E] [CompleteSpace E]
  (a : ℕ → E) (p : Equiv.Perm ℕ) (h : Summable (λ n => ‖a n‖)) :
  Summable (a ∘ p) ∧ tsum (a ∘ p) = tsum a := by sorry
