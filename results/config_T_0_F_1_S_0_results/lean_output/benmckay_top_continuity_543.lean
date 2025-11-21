import Mathlib

/-- R^n as Fin n → ℝ, and R^(n+1) as Fin (n+1) → ℝ. -/
def Vn (n : ℕ) := Fin n → ℝ
def Vn1 (n : ℕ) := Fin (n + 1) → ℝ

/-- Squared Euclidean norm on Vn and Vn1 (sum of squares). -/
def sq_norm {n : ℕ} (x : Vn n) : ℝ := Finset.univ.sum fun i => (x i) ^ 2
def sq_norm1 {n : ℕ} (y : Vn1 n) : ℝ := Finset.univ.sum fun i => (y i) ^ 2

/-- Closed unit ball X and boundary A in R^n, and unit sphere Y in R^(n+1), described by squared norm. -/
def X {n : ℕ} : Set (Vn n) := { x | sq_norm (x : Vn n) ≤ 1 }
def A {n : ℕ} : Set (Vn n) := { x | sq_norm (x : Vn n) = 1 }
def Y {n : ℕ} : Set (Vn1 n) := { y | sq_norm1 (y : Vn1 n) = 1 }

/-- We treat f as a function Vn → Vn1 which on 0 equals (1,0) and for nonzero x has the stated formula.
    We state the two conclusions: f sends every boundary point to (-1,0), and f is injective on the interior X \ A. -/

theorem f_maps_A_to_minus_one {n : ℕ} (f : Vn n → Vn1 n)
  (f_zero : f (fun _ => 0) = Fin.cons (1 : ℝ) (fun _ => 0 : Fin n → ℝ))
  (f_nonzero : ∀ x : Vn n, sq_norm (x : Vn n) ≠ 0 →
    f x =
      Fin.cons (Real.cos (Real.pi * Real.sqrt (sq_norm (x : Vn n))))
        (fun i => (Real.sin (Real.pi * Real.sqrt (sq_norm (x : Vn n)))) * (x i / Real.sqrt (sq_norm (x : Vn n))))) :
  ∀ x : Vn n, x ∈ A → f x = Fin.cons (-1 : ℝ) (fun _ => 0 : Fin n → ℝ) := by
  sorry

theorem f_inj_on_interior {n : ℕ} (f : Vn n → Vn1 n)
  (f_zero : f (fun _ => 0) = Fin.cons (1 : ℝ) (fun _ => 0 : Fin n → ℝ))
  (f_nonzero : ∀ x : Vn n, sq_norm (x : Vn n) ≠ 0 →
    f x =
      Fin.cons (Real.cos (Real.pi * Real.sqrt (sq_norm (x : Vn n))))
        (fun i => (Real.sin (Real.pi * Real.sqrt (sq_norm (x : Vn n)))) * (x i / Real.sqrt (sq_norm (x : Vn n))))) :
  Set.InjOn f (Set.diff (X : Set (Vn n)) (A : Set (Vn n))) := by
  sorry
