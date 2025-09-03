import Mathlib

/-!
Exercise: If G is a group and a, x ∈ G, prove that C(x^{-1} a x) = x^{-1} C(a) x.
We express this using Set.centralizer and the image under conjugation.
-/

theorem Herstein_exercise_2_3_17 {G : Type _} [Group G] (a x : G) :
  Set.centralizer ({x⁻¹ * a * x} : Set G) = (fun g => x⁻¹ * g * x) '' (Set.centralizer ({a} : Set G)) := by
  sorry
