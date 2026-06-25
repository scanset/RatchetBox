using System;
using System.Threading;

namespace App
{
    class Picker
    {
        public int Run(Warehouse warehouse, int id, int attempts)
        {
            int successCount = 0;
            for (int i = 0; i < attempts; i++)
            {
                if (warehouse.Reserve(id, 1))
                {
                    successCount++;
                }
            }
            return successCount;
        }
    }
}