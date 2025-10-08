import Mathlib

open Set

/-- The closed unit interval in ℝ. -/
def I : Set ℝ := Set.Icc (0 : ℝ) 1

/-- The space X = [0,1]^ℕ as a subtype of ℕ → ℝ. -/
def X : Type := { f : ℕ → ℝ // ∀ n, f n ∈ I }

/- We consider X equipped with the uniform topology coming from the sup metric
   d(f,g) = sup_n |f n - g n| (the topology of uniform convergence).
   The following asserts that this topological space is not locally compact. -/

theorem Munkres_exercise_29_4 : ¬ LocallyCompactSpace X := by
  sorry
