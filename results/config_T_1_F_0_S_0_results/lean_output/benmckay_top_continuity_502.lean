import Mathlib

/-- Let f(v_1,...,v_n) be a continuous function of vectors v_1,...,v_n ∈ ℝ^n that is invariant
under simultaneous orthogonal transformations: f(Uv_1,...,Uv_n)=f(v_1,...,v_n) for every linear
isometry U : ℝ^n ≃ₗᵢ[ℝ] ℝ^n. Let Y be the set of all positive semidefinite symmetric n × n matrices.
Then there exists a continuous function g : Y → ℝ such that f(v_1,...,v_n)=g(A) for every choice
of v_1,...,v_n, where A is the Gram matrix with entries A_{ij}=⟪v_i, v_j⟫. -/

variable {n : ℕ}

open Matrix

def V := Fin n → ℝ

/-- Gram matrix of an n-tuple of vectors in ℝ^n. -/
def gram (v : Fin n → V) : Matrix (Fin n) (Fin n) ℝ := fun i j => ∑ k, v i k * v j k

/-- The set Y of symmetric positive semidefinite n×n real matrices. -/
def Y : Set (Matrix (Fin n) (Fin n) ℝ) :=
  { A | A.transpose = A ∧ ∀ x : V, 0 ≤ ∑ i, ∑ j, x i * A i j * x j }

/-- If f : (ℝ^n)^n → ℝ is continuous and invariant under all linear isometric automorphisms of ℝ^n
(applied simultaneously to each of the n input vectors), then f factors through the Gram matrix map.
There exists g : Y → ℝ continuous on Y with f = g ∘ gram. -/
theorem exists_continuous_g_factor_through_gram
  (f : (Fin n → V) → ℝ)
  (hf : Continuous f)
  (hO : ∀ (U : V ≃ₗᵢ[ℝ] V) (v : Fin n → V), f (U ∘ v) = f v) :
  ∃ g : Matrix (Fin n) (Fin n) ℝ → ℝ, ContinuousOn g Y ∧ ∀ v : Fin n → V, f v = g (gram v) := by sorry