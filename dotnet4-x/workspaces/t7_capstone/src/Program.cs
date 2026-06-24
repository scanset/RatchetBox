using System;
using System.Drawing;
using System.Windows.Forms;

namespace App
{
    internal static class Program
    {
        [STAThread]
        private static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new TrafficSim());
        }
    }

    public class TrafficSim : Form
    {
        private Timer timer;
        private Graphics graphics;
        private int roadY = 200;
        private int roadHeight = 100;
        private int lightWidth = 30;
        private int lightHeight = 80;
        private int carWidth = 20;
        private int carHeight = 10;
        private int lightSpacing = 150;
        private int lightCount = 3;
        private int carCount = 5;
        private TrafficLight[] lights;
        private Car[] cars;

        public TrafficSim()
        {
            this.Size = new Size(800, 400);
            this.Text = "Traffic Simulation";
            this.DoubleBuffered = true;

            lights = new TrafficLight[lightCount];
            for (int i = 0; i < lightCount; i++)
            {
                lights[i] = new TrafficLight();
                lights[i].x = 100 + i * lightSpacing;
                lights[i].y = roadY - lightHeight - 20;
                lights[i].state = i % 3;
                lights[i].timer = 0;
            }

            cars = new Car[carCount];
            for (int i = 0; i < carCount; i++)
            {
                cars[i] = new Car();
                cars[i].x = i * 150;
                cars[i].y = roadY + 20 + (i % 2) * 30;
                cars[i].speed = 1.0f + i * 0.2f;
                cars[i].acceleration = 0.01f * (i + 1);
                cars[i].color = Color.FromArgb(255, 50 + i * 30, 50 + i * 20, 200);
            }

            timer = new Timer();
            timer.Interval = 20;
            timer.Tick += OnTimerTick;
            timer.Start();
        }

        protected override void OnPaint(PaintEventArgs e)
        {
            base.OnPaint(e);
            graphics = e.Graphics;

            // Draw road
            graphics.FillRectangle(Brushes.Gray, 0, roadY, this.Width, roadHeight);

            // Draw road markings
            for (int i = 0; i < this.Width; i += 40)
            {
                graphics.FillRectangle(Brushes.White, i, roadY + roadHeight / 2 - 2, 20, 4);
            }

            // Draw lights
            for (int i = 0; i < lightCount; i++)
            {
                TrafficLight light = lights[i];
                if (light.state == 0)
                {
                    graphics.FillRectangle(Brushes.Red, light.x, light.y, lightWidth, lightHeight);
                }
                else if (light.state == 1)
                {
                    graphics.FillRectangle(Brushes.Yellow, light.x, light.y, lightWidth, lightHeight);
                }
                else
                {
                    graphics.FillRectangle(Brushes.Green, light.x, light.y, lightWidth, lightHeight);
                }
            }

            // Draw cars
            for (int i = 0; i < carCount; i++)
            {
                Car car = cars[i];
                graphics.FillRectangle(new SolidBrush(car.color), car.x, car.y, carWidth, carHeight);
            }
        }

        private void OnTimerTick(object sender, EventArgs e)
        {
            // Update lights
            for (int i = 0; i < lightCount; i++)
            {
                TrafficLight light = lights[i];
                light.timer++;
                if (light.timer > 100)
                {
                    light.timer = 0;
                    light.state = (light.state + 1) % 3;
                }
            }

            // Update cars
            for (int i = 0; i < carCount; i++)
            {
                Car car = cars[i];
                car.x += car.speed;
                car.speed += car.acceleration;

                // Check for lights
                for (int j = 0; j < lightCount; j++)
                {
                    TrafficLight light = lights[j];
                    if (Math.Abs(car.x - light.x) < 50)
                    {
                        if (light.state == 0 || light.state == 1)
                        {
                            car.speed = Math.Max(0, car.speed - 0.1f);
                        }
                        else
                        {
                            car.speed = Math.Min(10.0f, car.speed + 0.05f);
                        }
                    }
                }

                // Reset car if it goes off screen
                if (car.x > this.Width)
                {
                    car.x = -carWidth;
                    car.y = roadY + 20 + (i % 2) * 30;
                }
            }

            this.Invalidate();
        }

        private class TrafficLight
        {
            public int x;
            public int y;
            public int state;
            public int timer;
        }

        private class Car
        {
            public float x;
            public float y;
            public float speed;
            public float acceleration;
            public Color color;
        }
    }
}