import Mathlib

/-!
Translate the following statement into Lean4 (unproven):
Suppose that X is a path connected and locally simply connected topological space, with a covering
by path connected open sets {X_a}_{a ∈ A}, so that every finite intersection X_{ab} := X_a ∩ X_b
is also path connected. Let π := π_1(X,x_0) and π_a := π_1(X_a,x_0), and so on. Take a group Γ
and group morphisms π_a → Γ which agree on every π_{ab}, for every a,b. Then there is a unique
group morphism π → Γ extending the given morphisms π_a → Γ.

We encode the universal property of π algebraically: assume groups π, π_a, π_{ab} and maps
incl_a : π_a →* π and maps from intersections f_left, f_right, satisfying the obvious compatibilities.
Then φ_a : π_a →* Γ that agree on intersections induce a unique Φ : π →* Γ.
-/

open Function

theorem benmckay_top_covering_spaces_886 {A : Type _}
  (π : Type _) [Group π]
  (π_a : A → Type _) [∀ a, Group (π_a a)]
  (π_ab : A × A → Type _) [∀ ab, Group (π_ab ab)]
  (incl_a : ∀ a, π_a a →* π)
  (f_left  : ∀ (a b : A), π_ab (a, b) →* π_a a)
  (f_right : ∀ (a b : A), π_ab (a, b) →* π_a b)
  (hcompat : ∀ (a b : A), (incl_a a).comp (f_left a b) = (incl_a b).comp (f_right a b))
  (Γ : Type _) [Group Γ]
  (φ_a : ∀ a, π_a a →* Γ)
  (hφ : ∀ (a b : A), (φ_a a).comp (f_left a b) = (φ_a b).comp (f_right a b)) :
  ∃! (Φ : π →* Γ), ∀ a, (Φ.comp (incl_a a)) = φ_a a := by sorry
