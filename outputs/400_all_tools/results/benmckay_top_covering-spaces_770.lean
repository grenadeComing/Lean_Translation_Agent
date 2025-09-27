import Mathlib

universe u v w

variables {X : Type u} [TopologicalSpace X] (x0 : X)

variables (pi1 : Type v) (tildeX : Type w) (deck_group : Type u)
variables [Group pi1] [Group deck_group]

constant deck_action : deck_group → tildeX → tildeX
constant concat_left : pi1 → tildeX → tildeX

theorem deck_group_of_universal_cover_is_pi1 :
  ∃ (φ : pi1 ≃* deck_group), ∀ (γ : pi1) (α : tildeX),
    deck_action (φ γ) α = concat_left γ α := by
  sorry
