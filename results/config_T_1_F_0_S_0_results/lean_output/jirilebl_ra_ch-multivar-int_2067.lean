import Mathlib

variable (n : ℕ)

def Rn := Fin n → ℝ

variable (is_open_rectangle : Set Rn → Prop) (V : Set Rn → ENNReal)

/-- Outer measure using sequences indexed by ℕ. -/
def m_star (S : Set Rn) : ENNReal :=
  Inf { x : ENNReal | ∃ (R : ℕ → Set Rn), (∀ j, is_open_rectangle (R j)) ∧ S ⊆ (⋃ j, R j) ∧ x = ∑' j, V (R j) }

/-- Outer measure using an arbitrary finite or countable index set (encodable). -/
def mu_star (S : Set Rn) : ENNReal :=
  Inf { x : ENNReal | ∃ (α : Type) [Encodable α] (R : α → Set Rn), (∀ a, is_open_rectangle (R a)) ∧ S ⊆ (⋃ a, R a) ∧ x = ∑' a, V (R a) }

theorem m_star_eq_mu_star (S : Set Rn) : m_star n is_open_rectangle V S = mu_star n is_open_rectangle V S := by sorry