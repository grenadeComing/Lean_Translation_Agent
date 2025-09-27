import Mathlib

/-- Algebraic abstract form of the van Kampen extension statement:
Suppose we have a family of groups G_a and intersection groups G_ab with group homomorphisms
incl_a : G_ab ->* G_a and incl_b : G_ab ->* G_b, and injections ι_a : G_a ->* G into a global
group G. Given a target group Γ and homomorphisms φ_a : G_a ->* Γ which agree on the images
of each G_ab, there is a unique group homomorphism φ : G ->* Γ extending the φ_a.
(This is an abstract algebraic translation of the topological statement about π1 of a cover.) -/
theorem van_kampen_group_gluing {A : Type*} {G : Type*} [Group G]
  {G_a : A → Type*} [∀ a, Group (G_a a)]
  {G_ab : A → A → Type*} [∀ a b, Group (G_ab a b)]
  (incl_a : ∀ a b, (G_ab a b) →* G_a a) (incl_b : ∀ a b, (G_ab a b) →* G_a b)
  (ι_a : ∀ a, (G_a a) →* G)
  {Γ : Type*} [Group Γ]
  (φ_a : ∀ a, (G_a a) →* Γ)
  (compat : ∀ a b (x : G_ab a b), (φ_a a).comp (incl_a a b) x = (φ_a b).comp (incl_b a b) x) :
  ∃! φ : G →* Γ, ∀ a (x : G_a a), φ (ι_a a x) = φ_a a x := by sorry
