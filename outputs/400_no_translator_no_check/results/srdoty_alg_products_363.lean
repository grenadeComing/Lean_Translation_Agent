import Mathlib

variable {G : Type _} [Group G]

/-- If H : Fin n → Subgroup G satisfies the uniqueness of expression
    property of an internal direct product (i.e. whenever the product of
    n elements, one from each H i, is 1 then each element is 1), then
    distinct factors have trivial intersection. -/
theorem internal_direct_product_pairwise_trivial {n : ℕ} (H : Fin n → Subgroup G)
  (unique : ∀ f : Fin n → G, (∀ k, f k ∈ H k) → (List.ofFn f).prod = 1 → ∀ k, f k = 1) :
  ∀ (i j : Fin n), i ≠ j → ∀ x : G, x ∈ H i → x ∈ H j → x = 1 := by sorry
