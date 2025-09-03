import Mathlib

open Set

theorem Munkres_exercise_43_2 {X Y : Type _} [MetricSpace X] [MetricSpace Y] [CompleteSpace Y]
  {A : Set X} {f : X → Y} (hf : UniformContinuousOn f A) :
  ∃ g : X → Y,
    ContinuousOn g (closure A) ∧
    (∀ x, x ∈ A → g x = f x) ∧
    UniformContinuousOn g (closure A) ∧
    (∀ g1 g2 : X → Y,
      (ContinuousOn g1 (closure A) ∧ (∀ x, x ∈ A → g1 x = f x) ∧ UniformContinuousOn g1 (closure A)) →
      (ContinuousOn g2 (closure A) ∧ (∀ x, x ∈ A → g2 x = f x) ∧ UniformContinuousOn g2 (closure A)) →
      (∀ x, x ∈ closure A → g1 x = g2 x)) := by sorry
