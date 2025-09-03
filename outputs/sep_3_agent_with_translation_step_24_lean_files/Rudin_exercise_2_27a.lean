import Mathlib

open Set Metric

abbrev Rk (k : ℕ) := EuclideanSpace ℝ (Fin k)

def condensation_points {X : Type _} [MetricSpace X] (E : Set X) : Set X :=
  { x | ∀ r, r > 0 → ¬ Set.Countable (E ∩ ball x r) }

theorem Rudin_exercise_2_27a (k : ℕ) {E : Set (Rk k)} (hE : ¬ Set.Countable E) :
  IsClosed (condensation_points (E : Set (Rk k))) ∧
  (∀ x, x ∈ condensation_points (E : Set (Rk k)) → ∀ ε, ε > 0 → ∃ y, y ∈ condensation_points (E : Set (Rk k)) ∧ y ≠ x ∧ dist x y < ε) := by
  sorry
