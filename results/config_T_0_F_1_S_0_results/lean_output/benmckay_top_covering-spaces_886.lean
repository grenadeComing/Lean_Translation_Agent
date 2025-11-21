import Mathlib

namespace benmckay_top_covering_spaces_886

variable {A : Type _}
variable {Γ : Type _} [Group Γ]
variable {π : Type _} [Group π]
variable (πa : A → Type _) [∀ a, Group (πa a)]
variable (πab : A → A → Type _) [∀ a b, Group (πab a b)]
variable (i_a : ∀ a, MonoidHom (πa a) π) -- inclusion maps π_a → π
variable (j_ab_a : ∀ a b, MonoidHom (πab a b) (πa a))
variable (j_ab_b : ∀ a b, MonoidHom (πab a b) (πa b))

/--
Suppose X is a path connected and locally simply connected topological space,
covered by path connected open sets {X_a}_{a ∈ A} with path connected pairwise
intersections X_{ab}. Let π = π_1(X,x0) and π_a = π_1(X_a,x0), etc. Given a
group Γ and group morphisms π_a → Γ which agree on every π_{ab}, there is a
unique group morphism π → Γ extending the given morphisms π_a → Γ.

This statement is expressed here in purely group-theoretic form: we assume
groups π, π_a, π_{ab} and the canonical inclusion homomorphisms induced by the
inclusions of the covering sets, and assert the universal lifting property.
-/
theorem van_kampen_unique_lift
  (compat_ι : ∀ a b, (i_a a).comp (j_ab_a a b) = (i_a b).comp (j_ab_b a b)) :
  ∀ (φa : ∀ a, MonoidHom (πa a) Γ),
    (∀ a b, (φa a).comp (j_ab_a a b) = (φa b).comp (j_ab_b a b)) →
    ∃! (φ : MonoidHom π Γ), ∀ a, φ.comp (i_a a) = φa a := by
  sorry

end benmckay_top_covering_spaces_886
