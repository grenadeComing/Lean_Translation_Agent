import Mathlib

/-!
Exercise: If φ is a homomorphism of G onto G' and N ⫽ G (N is a normal subgroup of G),
show that φ(N) ⫽ G' (the image of N under φ is a normal subgroup of G').
-/

theorem Herstein_exercise_2_7_7 {G G' : Type _} [Group G] [Group G'] (φ : G →* G')
  (hφ : Function.Surjective φ) (N : Subgroup G) (hN : Subgroup.Normal N) :
  Subgroup.Normal (Subgroup.map φ N) := by sorry
