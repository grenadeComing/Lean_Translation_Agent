import Mathlib

/-!
Exercise: Let (X, d_X) and (Y, d_Y) be metric spaces; let Y be complete. Let A ⊂ X.
Show that if f : A → Y is uniformly continuous, then f can be uniquely extended to a
continuous function g : closure A → Y, and g is uniformly continuous.
-/

theorem Munkres_exercise_43_2 {X : Type*} [MetricSpace X] {Y : Type*} [MetricSpace Y] [CompleteSpace Y]
  (A : Set X) (f : Subtype A → Y) (hf : UniformContinuous f) :
  ∃! (g : Subtype (closure A) → Y),
    Continuous g ∧ UniformContinuous g ∧
    ∀ a : Subtype A, g ⟨a.1, subset_closure a.2⟩ = f a := by sorry
