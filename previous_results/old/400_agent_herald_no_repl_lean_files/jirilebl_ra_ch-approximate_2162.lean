import Mathlib

open Complex

/-!
Given an entire function f : ℂ → ℂ with no zeros, there exists an entire g with exp ∘ g = f.
This is the usual existence of a global holomorphic logarithm on a simply connected domain (ℂ).
-/

theorem exists_entire_log_of_nonvanishing (f : ℂ → ℂ) (hf : IsEntire f) (h : ∀ z, f z ≠ 0) :
  ∃ g : ℂ → ℂ, IsEntire g ∧ Complex.exp ∘ g = f := by sorry
