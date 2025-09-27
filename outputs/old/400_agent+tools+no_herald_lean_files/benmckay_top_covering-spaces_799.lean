import Mathlib

/-!
A simple lemma: if p : Xtil -> X and f : Xtil -> Xtil satisfy p ∘ f = p,
then for any continuous path gamma : I -> X and any lift gamma_tilde : I -> Xtil
with p ∘ gamma_tilde = gamma, the composite f ∘ gamma_tilde is also a lift.
This formalises the obvious calculation p ∘ (f ∘ gamma_tilde) = gamma.
-/

open Function

variable {X Xtil I : Type*} [TopologicalSpace X] [TopologicalSpace Xtil] [TopologicalSpace I]

theorem deck_transformation_preserves_lift
  (p : Xtil → X) (f : Xtil → Xtil) (hf : p ∘ f = p)
  {γ : I → X} (hγ : Continuous γ) {γ_tilde : I → Xtil} (hγ_tilde : Continuous γ_tilde)
  (h_lift : p ∘ γ_tilde = γ) :
  p ∘ (f ∘ γ_tilde) = γ := by sorry
